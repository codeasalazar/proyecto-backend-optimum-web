const app = require('./src/app');
const port = process.env.PORT || 3001;

app.listen(port, (err) => {
    if (err) throw new Error('error on running server');
    console.log('Server started on port 3001');
})
