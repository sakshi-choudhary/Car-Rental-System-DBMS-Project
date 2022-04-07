const router = require("express").Router(),
  db = require("../db/db");

router.get("/", (req, res) => {
  if (!req.user) return res.redirect("/");

  db.query(
    `SELECT * FROM reservations
    JOIN cars ON reservations.idCar=cars.idCar
    WHERE reservations.idUser LIKE ?
    AND DATE(dateOut)>=CURDATE()
    AND reservations.active NOT LIKE 0
    AND cars.active NOT LIKE 0;`,
    req.user.idUser,
    (err, result) => {
      if (!result.length)
        return res.render("library", {
          res: req.query.res,
          carsArr: null,
          user: req.user,
        });
      else
        return res.render("library", {
          res: req.query.res,
          carsArr: result,
          user: req.user,
        });
    }
  );
});

module.exports = router;
