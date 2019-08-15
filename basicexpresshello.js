const express = require('express')
const app = express()
const port = 80
const msg = 'Hello Blue World!\n';

app.get('/', function (req, res) {
  console.log(msg);
  res.send(msg);
});

app.listen(port, () => console.log(`app listening on port ${port}!`))
