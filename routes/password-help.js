const router = require("express").Router();

router.get("/", (req, res) => {
  if (req.user) return res.redirect("/library");
  res.render("password-help", { user: null });
});

module.exports = router;
