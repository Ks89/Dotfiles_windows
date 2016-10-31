#!/bin/bash

#The MIT License (MIT)
#
#Copyright (c) 2015-2016 Stefano Cappa
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#THE SOFTWARE.

#ONLY FOR Windows

#Run as administrator

tput setaf 2; echo "Welcome to KS89 dotfiles 2.0 - last update 10/31/2016"

tput setaf 2; echo "Attention! If you want to run this script install Node.Js and restart your PC"
tput setaf 2; echo "Please, insert your password if requested"

read -p "Do you have Node.Js installed? Are you ready? Type y or n " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "copying files to home dir"
    cp .git-completion.bash ~/.git-completion.bash
    cp .git-prompt.sh ~/.git-prompt.sh
    cp .gitconfig ~/.gitconfig
    echo "installing some global packages from npm"
    bash npm.sh

    echo "Thank u, bye bye!"
fi
