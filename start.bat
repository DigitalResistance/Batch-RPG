:: Name: start.bat
:: Purpose:
:: Author: XilluX
:: Created: Wednesday, December 9, 2015 - 5:30 PM
:: ChangeLog:
::
:: License:
::# The MIT License (MIT)
::# 
::# Copyright (c) 2015 XilluX
::# 
::# Permission is hereby granted, free of charge, to any person obtaining a copy
::# of this software and associated documentation files (the "Software"), to deal
::# in the Software without restriction, including without limitation the rights
::# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
::# copies of the Software, and to permit persons to whom the Software is
::# furnished to do so, subject to the following conditions:
::# 
::# The above copyright notice and this permission notice shall be included in all
::# copies or substantial portions of the Software.
::# 
::# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
::# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
::# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
::# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
::# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
::# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
::# SOFTWARE.
::
@echo off

::=====SETUP=====::
REM Shortcut:
:SETUP

rem location: SETUP | :SETUP
rem Desc: Player enters desiered username.
rem Purpose: Allows players to further personalize their character.
rem shortcut: N/A
set player_handle=""

echo Enter a username:
set /P player_handle=""


set player_pass=""
set pass_blank_check=""

echo (optional)Enter a passphrase?:
set /P player_pass=""
IF "%player_pass%" == "%pass_blank_check%" (
  goto:SETUP_classSelection
  ) ELSE (
    echo %player_pass% > player_info/handle.txt
    goto:SETUP_classSelection
    )

:SETUP_classSelection
echo Select a class:

pause >nul
