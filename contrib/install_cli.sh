 #!/usr/bin/env bash

 # Execute this file to install the apixcash cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%Apixcash-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/Apixcash-Qt.app/Contents/MacOS/apixcashd /usr/local/bin/apixcashd
 sudo ln -s ${LOCATION}/Apixcash-Qt.app/Contents/MacOS/apixcash-cli /usr/local/bin/apixcash-cli
