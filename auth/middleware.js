function authenticationMiddleware() {
  return (req, res, next) => {
    if (req.isAuthenticated()) next();
    res.redirect("/");
  };
}

module.exports = authenticationMiddleware;
