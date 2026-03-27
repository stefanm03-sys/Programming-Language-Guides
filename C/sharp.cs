// This is a C Sharp comment
using System; // Imports namespace

var a = 1; // var declares any variable. The semi colon is required for nearly all statements, or errors will be present
var b = "2"; // This var has a string
var c = 3.0; // This var has a float (decimal value)
var d = true; // This var has a boolean value
Console.WriteLine(d); // Prints d
Console.WriteLine(b); // Prints b

// These declare specific data
int e = 2; // Declares an integer
double f = 10.4; // Declares a decimal
char g = "S"; // Stores a string, but only one character (letter, num, etc)
string h = "Sup?"; // Stores a full string
bool i = true; // Declares the only two boolean values

// 

int j = 9, k = 10; // Declare numerous values at once
Console.WriteLine(j * k); // Multiplying, returns product
Console.WriteLine(j / k); // Division, returns quotient
Console.WriteLine(k % j); // Returns the remaining value of division instead of the quotient


/* 
placeholder -> {0}
This (the {0}) is an 'index placeholder', essentially a regular placeholder value. This will return an error however and should not be used with variables
*/

var l = "world"; // This assigns e with "world"
Console.WriteLine("Hello {0}!", l); // This replaces the value of {0} with l. You can add more variables sequentially with commas

//

if (c > a) // This compares a and c, does not need a semi colon
{ // Prints out "c is greater!" if c is greater. The opening brace goes below the condition
    Console.WriteLine("c is greater!");
} // The closing brace goes here to close the condition
else if (a > c) // Compares a and c again
{ // Prints out "a is greater!" if a is greater
    Console.WriteLine("a is greater!");
}
else // Does not compare anything, this should be used if you want code to run without a condition if the intial one was false
{ // This returns if the values are equals or have no value
    Console.WriteLine("They are equal, or have no value!");
}

// 

/* 
Classes are normally what you should use for programs in C Sharp
Programs as simple as Console.WriteLine() will require a class to run, but I separated them both
When making apps and games, programs are required
*/
class MyProgram // Creates a class named "MyProgram"
{
    static void main() /*
    static indicates that a method belongs to a class instead of objects
    void indicates the method returns no value
    main() is the main entry point of the program
    */
    {
        Console.WriteLine("Hello program!");
        static int Multiply(int a, int b)
        {
            /*
            static here defines a function
            int defines the data type to use
            From there, you make a function like the example above
            */
            Console.WriteLine("Product Of Values:", a * b);
        } 
        Multiply(1, 2); // Calls function


    }
}

