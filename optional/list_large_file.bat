@echo off

##
#
# WIP
#
##

set PATH_TO_SEARCH=%1
set FILE_SIZE=(%2 * 1048576)

forfiles /p %1 /s /m * /C "cmd /c if @fsize GEQ 1048576 echo @path"
