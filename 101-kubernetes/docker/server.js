const express = require('express');
let app = express();

app.get('/', (req, res) => {
  res.send('<h1>Hello Docker World with Kubernetes: version: v1</h1>');
});

const PORT = process.env.PORT || 9000;

app.listen(PORT, () => console.log('Listening on PORT :', PORT));