const express = require("express")
const { postgraphile } = require("postgraphile")

const app = express()

app.use(
    postgraphile(
        process.env.DATABASE_URL || "postgres://postgres:12345@localhost/catastro",
        "catastro", {

        watchPg: true,
        extendedErrors: ["hint", "detail", "errcode"],
        appendPlugins: [require("@graphile-contrib/pg-simplify-inflector")],
        graphiql: true,
        enhanceGraphiql: true,
        enableQueryBatching: true,
        legacyRelations: "omit",


    }
    )
)

app.listen(process.env.PORT || 5000)