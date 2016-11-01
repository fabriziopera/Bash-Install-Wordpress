#!/bin/bash
# Wordpress Installation
if [ -z "$1" ]
  then
    echo "No user supplied"
    exit
fi
if [ -z "$2" ]
  then
    echo "No group supplied"
    exit;
fi
echo "*** Installing Wordpress - [Fabrizio Pera] ***"
echo "*** Download ***"
curl -LOks "https://wordpress.org/latest.tar.gz"
echo "*** Extract ***"
chmod +x "latest.tar.gz"
tar -zxf "latest.tar.gz"
rm -f "latest.tar.gz"
echo "*** Move ***"
mv wordpress/* .
rmdir wordpress
echo "*** Setup Permission ***"
chown -R $1:$2 *
chmod -R g+w wp-content
echo "*** Finished ***"