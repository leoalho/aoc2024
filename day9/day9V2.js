const fs = require("fs");

const input = fs
  .readFileSync("./day9.txt", "utf-8")
  .split("")
  .map(x => +x);

const disk = input
  .map((entry, index) =>
    Array(entry).fill(index % 2 == 0 ? ~~(index / 2) : ".")
  )
  .flat();

for (let i = disk.length - 1; i >= 0; i--) {
  if (disk[i] == ".") continue;
  const firstEmpty = disk.indexOf(".");
  if (firstEmpty > i) break;
  disk[disk.indexOf(".")] = disk[i];
  disk[i] = ".";
}

let checksum = disk.reduce((p, c, i) => (disk[i] != "." ? p + i * c : p), 0);

console.log(checksum); //Result of part1
