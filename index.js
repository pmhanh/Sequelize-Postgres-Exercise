const { Sequelize } = require('sequelize');

// Initialize Sequelize
const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    dialect: 'postgres',
    dialectModule: require('pg'),
    logging: false,
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
  