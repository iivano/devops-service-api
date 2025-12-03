import express from "express";

const app = express();
const port = 3000;//process.env.PORT || 8080;

app.get("/status", (req, res) => {
	res.json({
		status: "ok",
		timestamp: new Date().toISOString(),
	});
});

app.listen(port, () => {
  console.log(`Service running on port ${port}`);
});