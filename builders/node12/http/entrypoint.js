var http = require('http')
var handler = require('./user/index.js')
var server = http.createServer()

server.on('request', function (req, res) {
	handler(req, res)
})

server.listen(8080, () => {
	console.log('server started')
})
