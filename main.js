// Import the express package
const express = require('express')
// Instanciate an express app
const app = express()
// Specify port on which the application will listen
const port = 3000
// Define a route
app.get('/', (req, res) => res.send('Hello World!'))
// Start listening on the defined port
app.listen(port, () => console.log(`Example app listening on port ${port}`))
