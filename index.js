const express = require('express');

const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
  console.log(req);
  res.send('I ❤️ Docker!!!');
});

app.listen(PORT, () => {
  console.log(`Server runs on :${PORT}`);
});
