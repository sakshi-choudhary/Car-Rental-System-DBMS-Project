const router = require("express").Router();

router.get("/", (req, res) => {
  res.render("terms-of-use", { user: req.user });
});

module.exports = router;
