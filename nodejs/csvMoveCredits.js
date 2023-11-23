const fs = require('fs')
const { parse } = require("csv-parse")

const arguments = process.argv
if (arguments?.length < 3) {
  throw new Error('Missing filename')
}
const baseFilename = arguments[2]
const infileName = `./${baseFilename}.csv`
let fileCount = 1
let count = 0
const MAXIMUM_LINES_IN_FILE = 800
let outStream
let outfileName = `${baseFilename}-${fileCount}.csv`
newWriteStream()
let inStream = fs.createReadStream(infileName)

function newWriteStream(){
  outfileName = `${baseFilename}-${fileCount}.csv`
  outStream = fs.createWriteStream(outfileName)
  count = 0
}

const updateLine = (lineArray) => {
  const dateTimeArray = lineArray[2]?.split('T') || []
  lineArray[2] = dateTimeArray[0] || []
  if (lineArray[8]?.startsWith('-')) {
    lineArray[9] = lineArray[8]
    lineArray[8] = ''
  }
  return JSON.stringify(lineArray)
}

inStream.pipe(parse({ delimiter: ",", from_line: 3 }))
.on("data", function (line) {
  count++
  const updatedLine = updateLine(line)
  outStream.write(updatedLine + '\n')

  if (count >= MAXIMUM_LINES_IN_FILE) {
    fileCount++
    console.log('file ', outfileName, count)
    outStream.end()
    newWriteStream()
  }
})

inStream.on('close', function() {
  if (count > 0) {
      console.log('Final close:', outfileName, count)
  }
  inStream.close()
  outStream.end()
  console.log('Done')
})