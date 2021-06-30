let BLACK   = "\u001b[30m"
let RED     = "\u001b[31m"
let GREEN   = "\u001b[32m"
let YELLOW  = "\u001b[33m"
let BLUE    = "\u001b[34m"
let MAGENTA = "\u001b[35m"
let CYAN    = "\u001b[36m"
let WHITE   = "\u001b[37m"
let RESET   = "\u001b[0m"

proc black*(str : string) : string =
  BLACK & str & RESET
proc red*(str : string) : string =
  RED & str & RESET
proc green*(str : string) : string =
  GREEN & str & RESET
proc yellow*(str : string) : string =
  YELLOW & str & RESET
proc blue*(str : string) : string =
  BLUE & str & RESET
proc magenta*(str : string) : string =
  MAGENTA & str & RESET
proc cyan*(str : string) : string =
  CYAN & str & RESET
proc white*(str : string) : string =
  WHITE & str & RESET

let BRIGHT_BLACK   = "\u001b[30;1m"
let BRIGHT_RED     = "\u001b[31;1m"
let BRIGHT_GREEN   = "\u001b[32;1m"
let BRIGHT_YELLOW  = "\u001b[33;1m"
let BRIGHT_BLUE    = "\u001b[34;1m"
let BRIGHT_MAGENTA = "\u001b[35;1m"
let BRIGHT_CYAN    = "\u001b[36;1m"
let BRIGHT_WHITE   = "\u001b[37;1m"

proc bold_black*(str : string) : string = 
  BRIGHT_BLACK & str & RESET
proc bold_red*(str : string) : string = 
  BRIGHT_RED & str & RESET
proc bold_green*(str : string) : string = 
  BRIGHT_GREEN & str & RESET
proc bold_yellow*(str : string) : string = 
  BRIGHT_YELLOW & str & RESET
proc bold_blue*(str : string) : string = 
  BRIGHT_BLUE & str & RESET
proc bold_magenta*(str : string) : string = 
  BRIGHT_MAGENTA & str & RESET
proc bold_cyan*(str : string) : string = 
  BRIGHT_CYAN & str & RESET
proc bold_white*(str : string) : string = 
  BRIGHT_WHITE & str & RESET