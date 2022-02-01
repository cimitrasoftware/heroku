const express = require("express");
const app = express();

// app.get("/", function (req, res) {
//   res.send("<html><body><h1> Tay Kratzer | Salesforce//Heroku Interview//February 1st, 2022</p></h1></body></html>");
// });

app.use(express.static(__dirname));

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});

app.get("/thanks", function (req, res) {
  res.send("Thank You For Coming!");
});

app.listen(process.env.PORT || 5000);
