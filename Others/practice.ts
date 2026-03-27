// This is a comment in TS
/*
This is a multi line comment in TS
*/

// Typescript is Javascript with error handling and extended capability

let e = 2; // A simple way to define a variable that can be changed. The semicolon (;) indicates an individual statement
const d = 3; // A way to define a consistent variable (wont change)
console.log(e + d); // A printing statement in TypeScript
let f: string = "TypeScript"; // A variable defined using static typing (the : symbol and string = "Typescript")

//

/*
* does multiplication
/ does division
% returns the remainder of division
*/
function addNum(a: number, b: number) {
    let i = a + b;
    console.log(i);
} // A function to add numerous values together
addNum(5, 16)

function compare(a: string, b: string) {
    let binA = [];
    let binB = [];
    binA.push(a)
    binB.push(b)
    while (true) {
        console.log("this will be edited")
    }
    if (binA == binB) {
        console.log("Found a match! ${a) matches ${b} in comparison.");
    } else {
        console.log("No matches found! Returned null or is considered false.")
    }
} // A function to compare full strings to see if they are the same

compare("hello", "world")