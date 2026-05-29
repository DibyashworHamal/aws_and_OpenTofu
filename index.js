const http = require("http");
const PORT = 3000;

const server = http.createServer((req, res) => {
  res.end("Hello from AWS EC2, we are deploying with CodeDeploy! App version is v2.1");
});

server.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on http://0.0.0.0:${PORT}`);
});