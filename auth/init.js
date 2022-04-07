const crypto = require("crypto"),
  passport = require("passport"),
  LocalStrategy = require("passport-local").Strategy,
  authenticationMiddleware = require("./middleware"),
  db = require("../db/db");

passport.serializeUser((user, done) => {
  done(null, user.idUser);
});

passport.deserializeUser((idUser, done) => {
  db.query(
    `SELECT idUser, fullName, email, admin, active FROM users
    WHERE idUser LIKE ?;`,
    idUser,
    (err, result) => {
      done(err, result[0]);
    }
  );
});

function initPassport() {
  passport.use(
    "local",
    new LocalStrategy(
      {
        usernameField: "email",
        passwordField: "password",
        passReqToCallback: true,
      },
      (req, usernameField, passwordField, next) => {
        db.query(
          `SELECT * FROM users
      WHERE email LIKE ?
      AND active NOT LIKE 0;`,
          usernameField,
          (err, result) => {
            if (!result.length) return next(null, false);

            const passEncrypted = crypto
              .createHmac("sha256", passwordField)
              .update(usernameField)
              .digest("hex");

            if (result[0].pass !== passEncrypted) return next(null, false);

            return next(null, result[0]);
          }
        );
      }
    )
  );
  passport.authenticationMiddleware = authenticationMiddleware;
}

module.exports = initPassport;
