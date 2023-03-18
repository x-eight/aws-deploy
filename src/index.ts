import express from "express";
import dotenv from "dotenv";

dotenv.config();

const app = express();
const port = (process.env.PORT || 5000) as number;
const variable = process.env.VARIABLE;

// define a route handler for the default home page
app.get("/", (req, res) => {
  res.send({ message: "autodeploy", port, variable });
});

app.get("/hello", (req, res) => {
  res.send({ message: "hello autodeploy", port, variable });
});

app.get("/test", (req, res) => {
  res.status(204).send('Application is up and running!');
});

// start the Express server
app.listen(port, () => {
  console.log(`server started at http://localhost:${port}`);
});
