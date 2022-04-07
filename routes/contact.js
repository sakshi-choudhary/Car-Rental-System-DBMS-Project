const router = require("express").Router();

router.get("/", (req, res) => {
  res.render("contact", { user: req.user });
});

module.exports = router;
