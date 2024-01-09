import express from "express";
import dotenv from "dotenv";
import morgan from "morgan";


dotenv.config();

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(morgan('combined'));
const port = (process.env.PORT || 5000) as number;
const variable = process.env.VARIABLE || "test_local";
console.log("test")
// define a route handler for the default home page
app.get("/", (req, res) => {
  res.send({ message: "autodeploy", port, variable });
});

app.get("/hello", (req, res) => {
  console.log("GET console")
  res.send({ message: "hello autodeploy", port, variable });
});

app.post("/hello", (req, res) => {
  console.log("POST console")
  res.send({ message: "hello autodeploy", port, variable });
});

app.get("/test", (req, res) => {
  res.status(200).send({status:'running'});
});

// start the Express server
app.listen(port, () => {
  console.log(`server started at http://localhost:${port}`);
});
