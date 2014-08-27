http = require("http")
PORT = process.env.PORT or 3000

http.createServer((req, res) ->
  console.log "%d request received", process.pid

  headers = {"Content-Type": "text/plain"}
  res.writeHead 200, headers

  res.end "Hello world!\n"
  return
).listen PORT

console.log "%d listening on %d", process.pid, PORT