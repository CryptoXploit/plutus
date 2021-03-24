#!/bin/bash
main () {
 # Make addresses directory if it doesn't exist
 if [ ! -d "addresses" ]; then
  mkdir addresses
 fi
 #check db directory is empty or not
 if [ -d "db" ]; then
 rm -r db
 mkdir db
 fi
# Delete the addresses if it exists
 if [ -f "addresses/addresses.csv" ]; then
   rm addresses/addresses.csv;
 fi
touch addresses/addresses.csv;
# Download all the files that make up the addresses
# Only download if doesn't exist
echo "Downloading Addresses.csv";
cd addresses
rm addresses.zip
wget ftp://anonymous@52.54.150.80/addresses.zip;
# Unzip if doesn't exist
apt install unzip
echo "Decompressing addresses.csv";
unzip addresses.zip;
rm *addresses.zip*
local LINES;
LINES=$(wc -l < addresses.csv)
printf "Done grabbing and parsing address files, %s addresses loaded.\n" "$LINES";
}
main;
