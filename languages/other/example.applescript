-- This is an AppleScript comment
(*
This is a multi line comment.
This code will not run whatsoever without a macOS device

types:
text
number
integer
real (decimal)
boolean
data
list
record
alias (reference)
POSIX file (UNIX file path)
*)

set myName to "YourName" -- AS is like human dialogue. It is VERY literal. "set var to value" is an easy way to remember variable assignments
display dialog ("Welcome " & myName) -- Display strings and concat them using &
display dialog myName

--

set numA to 7
set numB to 10
set sumResult to (numA + numB) -- Do a math operation

if numA < numB then -- Start a primary condition
    display dialog "B is bigger!"
else if numB < numA then -- Use else if for a secondary condition
    display dialog "A is bigger!"
else -- Failsafe to run if both conditions are false
    display dialog "Both are equal."
end if -- Use end and the corresponding operator to close the block

if numA < numB then display dialog "A!" -- Single line comparison/condition

set randint to (random number from 0 to 5) -- Get a random number of your choice
display dialog (randint as text) -- Print it

--

set bin to {"boolean", "string", "float", "integer", 1, 2} -- Create an array of items
display dialog ((item 3 of bin) as text) -- Display a specific item from the array

--

set outputLines to {}
repeat with i from 0 to 10 -- Begin a fixed loop
    set end of outputLines to ("i is: " & (i as text))
end repeat -- Close loop
set AppleScript's text item delimiters to linefeed
set outputText to outputLines as text
set AppleScript's text item delimiters to ""
display dialog outputText

--

on addNumbers(a, b) -- Define a function using 'on' and the name/parameters of it
    return (a + b)
end on

display dialog ((addNumbers(9, 10)) as text) -- 19

--

set a to (1 as text) -- Convert variable to a string
set b to ("true" as boolean) -- Convert variable to a boolean
set c to ("3.14" as real) -- Convert to a decimal
set d to ("21" as number) -- Convert to a numeric value. Use integer to convert as well
set e to ("October 31, 2023" as date) -- Convert to a validated date
set f to POSIX file "/Users/person/Desktop/test.txt" as alias -- Create POSIX path as an alias to be used on a file
set g to POSIX path of (alias "Macintosh HD:Users:person:Desktop:test.txt") -- Make an alias a POSIX path

set f to choose file
set posixPath to POSIX path of f -- Get the POSIX path of the file
display dialog posixPath -- Return the path

--

--[
-- App Building
--[
tell application "Finder" -- Call an app from macOS, such as finder
    if not (exists folder "Folder" of desktop) then
        make new folder at desktop with properties {name:"Folder"} -- Valid properties can be found in the app's dictionary by right clicking and viewing the properties
    end if
end tell

display dialog "Enter something: " default answer "" -- Ask a question
set dialogue to text returned of result -- Use the last line to make a prompt and use the result

set selectedFile to choose file with prompt "Select a file" -- Prompt the user to choose a file and store it
set selectedFolder to choose folder with prompt "Select a folder" -- Same one as before but with a folder

display notification "Script success!" with title "Some Program" -- Display a notication on your mac device

try -- Detect errors
    set f to choose file -- Choose a file
on error errMsg -- If something goes wrong, the errMsg will appear and trigger this
    display dialog "Uh oh! Issue: " & errMsg -- Concat a string and the error
end try -- Close the block

set filePath to (path to desktop as text) & "this.txt" -- Set the path of a file
set fileRef to open for access file filePath with write permission true -- Open and give access to a file with permissions
write "Who're you?" to fileRef -- Log something on the file
close access fileRef -- Close it!

set fileRef to open for access file filePath -- Get the file again
set content to read fileRef -- Read the file
close access fileRef -- Close it


set fileType to text returned of (display dialog "What file type to bs organize? (ex. png)" default answer "") -- Ask and store some string

tell application "Finder"
    set downloadsFolder to folder "Downloads" of home -- Get a folder and set it as a default
    set targetFolder to (make new folder at downloadsFolder with properties {name:fileType & " Files"}) -- Set the target the user chooses and use the downloads folder
end tell

tell application "Finder"
    set matchingFiles to every file of downloadsFolder whose name extension is fileType -- Get specific files
    move matchingFiles to targetFolder -- Move them somewhere
end tell

tell application "Notes" to activate -- Start an application
tell application "Music" to quit -- Stop an app
tell application "Finder"
    get name of desktop -- Get properties of something
end tell

--

display notification "Organized!" with title "MyScriptIg" -- Display a notification to your Mac
display alert "Something" -- Display an alert to yout Mac
display dialog "Executing..(1/3)" -- String progress bar

--

set userChoice to button returned of (display dialog "Choose an action:" buttons {"One", "Two"} default button "One") -- Create buttons and choose something to be stored

set string to text returned of (display dialog "Type?" default answer "") -- Chain Dialog, the next line will use this same variable
set string to button returned of (display dialog "Type?" buttons {"Str", "Int", "Other"} default button "Str") -- Previous line connects directly to this 

--

set f to choose file with prompt "File Selection" -- Open a file selector window
try -- Check if something was selected
    set f to choose file
on error
    display dialog "Cancelled!"
end try
    

set d to choose folder with prompt "Folder Selection" -- Open a folder selection window
try -- Check if something was chosen
    set d to choose folder
on error
    display dialog "Cancelled!"
end try

--

choose from list {"Red", "Blue", "Green"} with prompt "Color: " -- Make a list and choose from it

--

on run -- When the app runs,
    display dialog "Running" -- do this,
end run -- then end!

on idle
    display notification "I am still online" with title "My App"
    return 60 -- Run again in 60 seconds instead of returning 60
end idle

--

set filepath to (path to desktop as text) & "log.txt" -- Set the file path as a variable with the name in strings
set f to open for access file filepath with write permission true -- Access the file path and give it permissions
write "Hey you! Ignore me!" to f starting at eof -- Append (add to) a file
close access f -- Close the access block

--




