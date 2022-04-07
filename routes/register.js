const router = require("express").Router(),
  crypto = require("crypto"),
  db = require("../db/db");

router.get("/", (req, res) => {
  if (req.user) return res.redirect("/library");
  res.render("register", { user: null, err: null });
});

router.post("/", (req, res, next) => {
  if (req.body.active === "0")
    return res.render("register", { user: null, err: "yes" });

  const passEncrypted = crypto
      .createHmac("sha256", req.body.password)
      .update(req.body.email)
      .digest("hex"),
    user = {
      admin: 0,
      active: 1,
      email: req.body.email,
      pass: passEncrypted,
      fullName: req.body.name,
    };

  db.query(`INSERT INTO users SET ?`, user, (err) => {
    if (err) return res.render("register", { user: null, err: "no" });

    db.query(
      `SELECT * FROM users
      WHERE email LIKE ?;`,
      user.email,
      (err, result) => {
        return req.login(result[0], (err) => {
          if (err) return next(err);
          return res.redirect("/library");
        });
      }
    );
  });
});

module.exports = router;
