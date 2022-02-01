const express = require("express");
const app = express();

app.use(express.static(__dirname));

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});

app.get("/thanks", function (req, res) {
  res.send("Thank You For Coming!");
});

app.listen(process.env.PORT || 5000);
