-- This is an AppleScript comment
(*
This is a multi line comment.
This code will not run whatsoever without a macOS device
*)

set myName to "YourName" -- AS is like human dialogue. It is VERY literal. "set var to value" is an easy way to remember variable assignments
display dialog ("Welcome " & myName) -- Display strings and concat them using &
display dialog myName

--

set numA to 7
set numB to 10
if numA < numB then -- Start a primary condition
    display dialog "B is bigger!"
else if numB < numA then -- Use else if for a secondary condition
    display dialog "A is bigger!"
else -- Failsafe to run if both conditions are false
    display dialog "Both are equal."
end if -- Use end and the corresponding operator to close the block

set bin to {"boolean", "string", "float", "integer", 1, 2} -- Create an array of items
display dialog ((item 3 of bin) as text) -- Display a specific item from the array

--

set texta to {}
repeat with i from 0 to 10 -- Begin a fixed loop
    set end of texta to ("i is: " & (i as text))
end repeat -- Close loop
set AppleScript's text item delimiters to linefeed
set texta to output as text
set AppleScript's text item delimiters to ""
display dialog output

--

tell application "Finder" -- Call an app from macOS, such as finder
    if not (exists folder "Folder" of desktop) then
        make new folder at desktop with properties {name:"Folder"} -- Valid properties can be found in the app's dictionary by right clicking and viewing the properties
    end if
end tell
