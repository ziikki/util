#!/bin/bash
sudo apt-get build-dep emacs24
sudo apt-get install software-properties-common python-software-properties
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install emacs25 
