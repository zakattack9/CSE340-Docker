# CONFIG FILE FOR GDB
# use this file to configure the GDB environment or execute commands during the gdb session startup
# it can be useful for quickly setting/modifying breakpoints before running a program in gdb
#
# HELPFUL GDB COMMANDS (SHORTHAND | CMD = DESC)
# h    | help <command>         = receive usage information on a command
# r    | run <program>          = start execution of program in gdb
# s a  | set args <args...>     = set arguments to pass to program being run
# k    | kill                   = kill current program being debugged
# q    | quit                   = quit gdb
#
# c    | continue               = debugger continues execution till next breakpoint
# n    | next                   = debugger executes next line as single instruction
# s    | step                   = like next, but debugger will execute entire function line by line
# fin  | finish                 = finish current function, loop, etc.
#
# l    | list                   = prints default of 10 lines of source file and can be used to print more lines
# l    | list <linenum>         = print lines centered around line number in current source file
# l    | list <function>        = print lines centered around the beginning of a function
# p    | print <expression>     = prints value of expression (variable, register, or memory location)
# i b  | info break             = prints info on all set breakpoints
# i ar | info args              = prints arguments to the function of the current stack frame
#
# b    | break <linenum>        = sets breakpoint at a line number in source file
# b    | break <file>:<linenum> = sets breakpoint at a line number in specific file 
# b    | break <function>       = sets breakpoint at a function
# dis  | disable <breaknum>     = disables a breakpoint (get breakpoint num from `info break`)
# en   | enable <breaknum>      = enables a breakpoint  (get breakpoint num from `info break`)
# d    | delete                 = deletes all breakpoints
# d    | delete <breaknums...>  = deletes one or more breakpoints separated by spaces
#
# ADD GDB STARTUP COMMANDS BELOW
