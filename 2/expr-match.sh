#!/bin/bash

sed -En 's/.*href=['\''"](.*)['\''"].*/\1/p' index.html
echo