const { Sequelize } = require('sequelize');
const pg = require('pg'); // Ensure 'pg' is required if needed

// Hardcoding database credentials for demonstration
const sequelize = new Sequelize(
  'sequelize_exercise',    // DB Name
  'postgres',        // DB User
  '12345678',    // DB Password
  {
    host: '127.0.0.1',   // DB Host (localhost or your actual host)
    port: 5432,          // DB Port (default PostgreSQL port)
    dialect: 'postgres', // Dialect (PostgreSQL)
    dialectModule: pg,   // Using pg module for PostgreSQL
    logging: false,      // Optional: Disable SQL query logging
  }
);

sequelize.authenticate()
  .then(() => console.log('Database connected successfully.'))
  .catch((err) => console.error('Unable to connect to the database:', err));


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
  
app.use("/blogs", require("./routes/blogRouter"));

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
  