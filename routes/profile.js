const router = require("express").Router();

router.get("/", (req, res) => {
  if (!req.user) return res.redirect("/");
  res.render("profile", { user: req.user });
});

module.exports = router;
