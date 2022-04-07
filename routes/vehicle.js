const router = require("express").Router(),
  db = require("../db/db");

router.get("/", (req, res) => {
  res.redirect("/");
});

router.get("/:vehicle_id", (req, res) => {
  db.query(
    `SELECT * FROM cars
    WHERE idCar LIKE ?
    AND active NOT LIKE 0;`,
    req.params.vehicle_id,
    (err, result) => {
      if (!result.length)
        return res.render("page_not_found", { user: req.user });
      else {
        db.query(
          `SELECT idCar, photo, model FROM cars
        WHERE idCar NOT LIKE ?
        AND active NOT LIKE 0
        ORDER BY RAND()
        LIMIT 10;`,
          req.params.vehicle_id,
          (err1, result1) => {
            if (req.user) {
              db.query(
                `SELECT * FROM reservations
            WHERE idCar LIKE ?
            AND idUser LIKE ?
            AND DATE(dateOut)>=CURDATE()
            AND active NOT LIKE 0;`,
                [req.params.vehicle_id, req.user.idUser],
                (err2, result2) => {
                  return res.render("vehicle", {
                    car: result[0],
                    carsArr: result1,
                    resv: result2[0],
                    user: req.user,
                  });
                }
              );
            } else
              return res.render("vehicle", {
                car: result[0],
                carsArr: result1,
                resv: null,
                user: req.user,
              });
          }
        );
      }
    }
  );
});

router.post("/add/:car_id", (req, res) => {
  if (!req.user) return res.redirect("/");

  const resv = {
    active: 1,
    idUser: req.user.idUser,
    dateIn: req.body.dateIn,
    idCar: req.params.car_id,
    dateOut: req.body.dateOut,
    fullPrice: req.body.numbers,
  };

  db.query(`INSERT into reservations SET ?`, resv, (err) => {
    if (err) return res.send({ code: 400, failed: __print("add", err) });
    return res.redirect("/library?res=add");
  });
});

router.post("/edit/:res_id/", (req, res) => {
  if (!req.user) return res.redirect("/");

  db.query(
    `UPDATE reservations
    SET fullPrice=?,
      dateIn=?,
      dateOut=?
    WHERE idReservation LIKE ?;`,
    [req.body.numbers, req.body.dateIn, req.body.dateOut, req.params.res_id],
    (err) => {
      if (err) return res.send({ code: 400, failed: __print("edit", err) });
      return res.redirect("/library?res=edit");
    }
  );
});

router.post("/rem/:res_id/", (req, res) => {
  if (!req.user) return res.redirect("/");

  db.query(
    `DELETE FROM reservations
    WHERE idReservation LIKE ?;`,
    req.params.res_id,
    (err) => {
      if (err) return res.send({ code: 400, failed: __print("delete", err) });
      return res.redirect("/library?res=del");
    }
  );
});

function __print(str, err) {
  return "It wasn't possible to " + str + " the data! Due to " + err;
}

module.exports = router;
