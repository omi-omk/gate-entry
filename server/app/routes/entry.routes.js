const { authJwt } = require("../middleware");
const controller = require("../controllers/entry.controller");

module.exports = function (app) {
    app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });
  app.get(
    "/api/entry/:empno",
    [authJwt.verifyToken],
    controller.getEmpNo
  );
  app.get(
    "/api/entry/emp/:empno",
    [authJwt.verifyToken],
    controller.getEmpData
  );
  app.post(
    "/api/entry/in",
    [authJwt.verifyToken],
    controller.empIn
  );
  app.put(
    "/api/entry/out",
    [authJwt.verifyToken],
    controller.empOut
  );
};
