const router = require("express").Router(),
  db = require("../db/db");

router.get("/", (req, res) => {
  res.redirect("/catalog/Bugatti");
});

router.get("/:catalog", (req, res) => {
  if (!req.user) return res.redirect("/");

  db.query(
    `SELECT * FROM brand
    WHERE name LIKE CONCAT('%', ?, '%');`,
    req.params.catalog,
    (err, result) => {
      db.query(
        `SELECT * FROM cars
      WHERE brand LIKE ?
      AND active NOT LIKE 0;`,
        result[0].name,
        (err1, result1) => {
          db.query(
            `SELECT name FROM brand
        WHERE name NOT LIKE ?;`,
            result[0].name,
            (err2, result2) => {
              return res.render("catalog", {
                brand: result[0],
                carsArr: result1,
                type: result2,
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
