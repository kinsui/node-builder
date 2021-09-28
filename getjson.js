const fs = require('fs')
let d = {};
fs.readFile('comment.json', 'utf8', function (err, data) {
    if (err) console.log(err);
    d = JSON.parse(data);//读取的值
});
process.argv.forEach((val, index) => {
    console.log(`${index}: ${val}`)
})