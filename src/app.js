//Require module
const express = require('express');

// Express Initialize
const app = express();
const port = 3000;

app.listen(port, () => console.log(`App is up using port ${port}!`));

// Routes
app.get('/', (req, res) => {
  res.send('App is up!');
});

app.get('/hello', (req, res) => {
  res.json({ "hello": "world" });
});
