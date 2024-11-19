#!/usr/bin/bash

rsync -avh baseproj/ 192.168.0.13:/keith/syncfpga --delete
