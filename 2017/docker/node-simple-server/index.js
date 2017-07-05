const http = require('http');
http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello World!\n');
}).listen(3000, '0.0.0.0');
console.log('start http://0.0.0.0:3000')
