#!/usr/bash
# This script is not executable

######### grab the content of web page
$content = $(curl -L www.tiername.de/tier_aw.htm );
echo $content;

