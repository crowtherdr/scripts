const fs = require('fs')
const { parse } = require("csv-parse")
const { stringify } = require("csv-stringify")

const arguments = process.argv
if (arguments?.length < 3) {
  throw new Error('Missing filename')
}
const filename = `./${arguments[2]}`
const writableStream = fs.createWriteStream(`${filename}-converted.csv`)

const stringifier = stringify({ header: false })
fs.createReadStream(`${filename}.csv`)
  .pipe(parse({ delimiter: ",", from_line: 3 }))
  .on("data", function (row) {
    const dateTimeArray = row[2].split('T')
    row[2] = dateTimeArray[0]
    if (row[8]?.startsWith('-')) {
      row[9] = row[8]
      row[8] = ''
    }
    console.log(row)
    stringifier.write(row)
  })
  .on("end", function () {
    stringifier.pipe(writableStream)
    console.log("finished")
  })
  .on("error", function (error) {
    console.log(error.message)
  })
