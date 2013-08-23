var tty = require('tty.js');

var app = tty.createServer({
  shell: '../launch.sh',
  users: {
    gofer: 'pugofer'
  },
  cwd: ".",
  static: './serverstatic',
  term: {
    cursorBlink: false
  },
  port: 8800
});

app.get('/foo', function(req, res, next) {
  res.send('bar');
});

app.listen();
