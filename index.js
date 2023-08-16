const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Hi, Hello");
});

const port = process.env.PORT || 3000;

app.listen(port, console.log(`Listining on port ${port}`));
