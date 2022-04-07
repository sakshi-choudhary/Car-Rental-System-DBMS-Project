const path = require("path"),
  logger = require("morgan"),
  express = require("express"),
  passport = require("passport"),
  session = require("express-session"),
  createError = require("http-errors"),
  cookieParser = require("cookie-parser"),
  app = express(),
  dataRouter = require("./routes/data"),
  indexRouter = require("./routes/index"),
  adminRouter = require("./routes/admin"),
  logoutRouter = require("./routes/logout"),
  vehicleRouter = require("./routes/vehicle"),
  contactRouter = require("./routes/contact"),
  catalogRouter = require("./routes/catalog"),
  profileRouter = require("./routes/profile"),
  loginRouter = require("./routes/login"),
  libraryRouter = require("./routes/library"),
  termsOfUseRouter = require("./routes/terms-of-use"),
  registerRouter = require("./routes/register"),
  passwordHelpRouter = require("./routes/password-help");

require("./auth").init(app);

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

app.use(logger("dev"));
app.use(cookieParser());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "public")));

app.use(
  session({
    secret: "secret",
    name: "session_id",
    saveUninitialized: false,
    resave: true,
    cookie: { maxAge: Date.now() + 60 * 1000 * 30 * 2 },
  })
);

app.use(passport.initialize());
app.use(passport.session());

app.use("/", indexRouter);
app.use("/data", dataRouter);
app.use("/admin", adminRouter);
app.use("/login", loginRouter);
app.use("/logout", logoutRouter);
app.use("/vehicle", vehicleRouter);
app.use("/contact", contactRouter);
app.use("/catalog", catalogRouter);
app.use("/library", libraryRouter);
app.use("/profile", profileRouter);
app.use("/register", registerRouter);
app.use("/terms-of-use", termsOfUseRouter);
app.use("/password-help", passwordHelpRouter);

// page not found
app.get("*", (req, res) => {
  res.render("page_not_found", { user: req.user });
});

// catch 404 and forward to error handler
app.use((req, res, next) => {
  next(createError(404));
});

// error handler
app.use((err, req, res, next) => {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render("error");
});

module.exports = app;
