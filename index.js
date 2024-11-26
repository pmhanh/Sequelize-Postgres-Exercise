const pg = require('pg'); // Ensure 'pg' is required if needed


const express = require("express");
const app = express();
const port = 3000;
const expressHbs = require("express-handlebars");
const {createPagination} = require("express-handlebars-paginate");
app.use(express.static(__dirname + "/html"));
const { Pool } = require("pg");
const pool = new Pool({
  user: 'postgres.dtxdgywsvylixjnnermi', // Replace with your actual PostgreSQL user
  host: 'aws-0-ap-southeast-1.pooler.supabase.com', // Replace with your Supabase URL
  database: 'postgres', // Replace with your actual database name
  password: 'phammyhanh154@', // Replace with your password
  port: 6543,
});

pool.query('SELECT NOW()', (err, res) => {
  if (err) {
    console.error('Database connection error', err.stack);
  } else {
    console.log('Database connected:', res.rows[0]);
  }
});

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
  
app.use("/blogs", require("./routes/blogRouter"));

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
