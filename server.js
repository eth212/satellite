require('express');
var app = express();

const PORT = process.env.PORT || 3000

app.listen(PORT, () => {
  console.log(`server has started on port: ${PORT}`);
})

app.get('/',  (req, res, next) => {
  res.sendFile(__dirname + '/map.html');
})
