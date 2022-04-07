const router = require("express").Router(),
  db = require("../db/db");

router.get("/", (req, res) => {
  db.query(
    `SELECT * FROM cars
    WHERE active>0
    ORDER BY RAND()
    LIMIT 4;`,
    (err, result) => {
      if (!result.length) return res.send("Database has no active vehicles!");
      return res.render("index", { carsArr: result, user: req.user });
    }
  );
});

router.post("/find", (req, res) => {
  return res.redirect("/data/" + req.body.item);
});

module.exports = router;
