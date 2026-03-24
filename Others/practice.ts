// This is a comment in TS
/*
This is a multi line comment in TS
*/

let x = 2 // A simple way to define a variable that can be changed
const y = 3 // A way to define a consistent variable (wont change)
console.log(x + y) // A printing statement in TypeScript

let z: string = "TypeScript" // A variable defined using static typing (the : symbol /and string =)

function addNum(a: number, b: number) {
    let i = a + b
    console.log(i)
} // A function to add numerous values together

function addStr(a: string, b: string): string {
    let i = null
    
} // A function to merge strings together