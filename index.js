const pg = require('pg'); // Ensure 'pg' is required if needed


const express = require("express");
const app = express();
const port = 3000;
const expressHbs = require("express-handlebars");
const {createPagination} = require("express-handlebars-paginate");
app.use(express.static(__dirname + "/html"));

app.engine(
  "hbs",
  expressHbs.engine({
      layoutsDir: __dirname + "/views/layouts",
      partialsDir: __dirname + "/views/partials",
      extname: "hbs",
      defaultLayout: "layout",
      runtimeOptions: {
        allowProtoPropertiesByDefault: true,
      },
      helpers: {
        createPagination,
        formatDate: (date) => {
          return new Date(date).toLocaleDateString("en-US", {
            year: "numeric",
            month: "long",
            day: "numeric",
          });
        },
      },
  }),
);
app.set("view engine", "hbs");

app.get("/", (req, res) => res.redirect("/blogs")  )
app.set("views", __dirname + "/views");
app.use("/blogs", require("./routes/blogRouter"));

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
