#!/usr/bash

######### grab the content of web page
$content = $(curl -L www.tiername.de/tier_aw.htm );
echo $content;

