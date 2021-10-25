import { Gitlab, Types } from "@gitbeaker/node";
import express from 'express';
import yaml from "front-matter";
const app = express()

const env = process.env
const port = env.PORT || "3000"

const api = new Gitlab({
  host: "https://gitlab.com",
  token: env.GITLAB_TOKEN
});

app.post('/dispatcher/issue', (req, res) => {
  res.status(200)
})

app.listen(port, () => {
  console.log("info: Your local instance of th webhook-trigger server is on http://localhost:"+port)
})