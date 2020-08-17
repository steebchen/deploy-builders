const { v4: uuid } = require('uuid')

module.exports = (req, res) => {
	res.end('new! here\'s a uuid: ' + uuid())
}
