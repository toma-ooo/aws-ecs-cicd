import Express from "express";
import bodyParser from "body-parser";
import cookieParser from "cookie-parser";

const port = process.env.PORT || 3000;

const app = Express();

// POSTのBODYにJSONを使うため、body-parserを有効化
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cookieParser());

// routes
app.get("/", async (req: Express.Request, res: Express.Response) => {
  try {
    console.info("root access");
    console.log("root access");
    res.end("Hello World");
  } catch (error) {
    console.error(`Error: ${error}`, error);
    res.status(500).send({ error: `${error}` });
  }
});

// listen
app.listen(port, () => {
  console.log(`listening on port ${port}!`);
});

export default app;