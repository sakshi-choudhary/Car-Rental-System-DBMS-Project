const router = require("express").Router(),
  db = require("../db/db");

router.get("/", (req, res) => {
  res.redirect("/");
});

router.get("/:data", (req, res) => {
  db.query(
    `SELECT * FROM cars
    WHERE brand LIKE CONCAT('%', ?, '%')
    OR model LIKE CONCAT('%', ?, '%')
    OR price LIKE CONCAT('%', ?, '%')
    OR year LIKE CONCAT('%', ?, '%')
    OR type LIKE CONCAT('%', ?, '%')
    AND active NOT LIKE 0;`,
    [
      req.params.data,
      req.params.data,
      req.params.data,
      req.params.data,
      req.params.data,
    ],
    (err, result) => {
      if (!result.length)
        return res.render("page_not_found", { user: req.user });

      db.query(
        `SELECT DISTINCT type FROM cars
      WHERE active NOT LIKE 0
      ORDER BY type;`,
        (err1, result1) => {
          db.query(
            `SELECT idCar, photo, model FROM cars
        WHERE active NOT LIKE 0
        ORDER BY RAND()
        LIMIT 10;`,
            result[0].idCar,
            (err2, result2) => {
              return res.render("data", {
                carsArr: result,
                data: req.params.data,
                typeArr: result1,
                randArr: result2,
                user: req.user,
              });
            }
          );
        }
      );
    }
  );
});

module.exports = router;
