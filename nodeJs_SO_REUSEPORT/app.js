var fs = require("fs");

var server = require("http").createServer(function(req, res) {
  res.write("hello hot-deploy!\n");
  res.end();
});

server.on("listening", function() {
  fs.writeFileSync("/var/run/app.pid", process.pid);
});

server.listen("/var/run/app.sock");
