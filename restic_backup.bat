@echo off

set SOURCE_PATH=%1
set TARGET_REPO=%2

restic -r %TARGET_REPO% --verbose --exclude-file=.resticignore backup %SOURCE_PATH%
