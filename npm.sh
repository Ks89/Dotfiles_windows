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
#DON'T EXECUTE THIS - BUT USE install.sh

read -p "Would you install npm global packages? Press y or n: " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo installing npm global packages
  npm install -g karma-cli
  npm install -g mocha
  npm install -g webpack
  npm install -g typescript
  npm install -g nodemon
  npm install -g gulp@github:gulpjs/gulp#4.0
  npm install -g npm-check
  npm install -g lite-server
  npm install -g remap-istanbul
  npm install -g webdriver-manager
  npm install -g protractor
  npm install -g nsp
  npm install -g codeclimate-test-reporter
  npm install -g istanbul
fi

read -p "Would you update webdriver-manager to be able to use Selenium Server? Press y or n: " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo setting up a Selenium Server
  webdriver-manager update
fi
