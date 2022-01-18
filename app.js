// Load express module using `require` directive
let express = require('express');
let app = express();

let hostname = 'localhost'
let port = 3000

// Defines request response in root URL (/)
app.get('/', function (req, res) {
res.send('Hello World! from Nodejs in Docker container run by "SEETHARAM KOYA"');
}).listen(port);

console.log("Serverrunning at- http://localhost:%d", port);
