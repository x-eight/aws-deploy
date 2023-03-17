import express from "express";
import dotenv from "dotenv";

dotenv.config();

const app = express();
const port = (process.env.PORT || 5000) as number;
const variable = process.env.VARIABLE;

// define a route handler for the default home page
app.get("/", (req, res) => {
  res.send({ message: "new autodeploy", port, variable });
});

// start the Express server
app.listen(port, () => {
  console.log(`server started at http://localhost:${port}`);
});
