const express = require('express');

const PORT = process.env.PORT || 3333;

const app = express();

app.get('/', (req, res) => {
  res.json({
    message: "This service is healthy",
    service: "mock-service"
  });
})

app.listen(PORT).on('listening', () => {
  console.log('App listening on port : ' + PORT);
});
