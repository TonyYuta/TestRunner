#!/bin/sh
# ========================================
GITHUB_ACCOUNT=TonyYuta
WS_DIR=Runner
REPO_NAME=Title_Validation_CSV_HW36
APP_VERSION=1.1
MAIN_CLASS=core.Title_Validation_CSV_HW36
ARGS_01=
# ========================================
 
if ! which java >/dev/null 2>&1 ; then echo Java not installed; return; fi
if ! which mvn >/dev/null 2>&1 ; then echo Maven not installed; return; fi
if ! which git >/dev/null 2>&1 ; then echo Git not installed; return; fi
 
if [ -d "$HOME/$WS_DIR" ] ; then cd ~/$WS_DIR; else echo $WS_DIR directory is not exist; return; fi
 
if [ -d "$HOME/$WS_DIR/$REPO_NAME" ]; then rm -rf $HOME/$WS_DIR/$REPO_NAME; fi
 
git clone https://github.com/$GITHUB_ACCOUNT/$REPO_NAME.git
 
cd ./$REPO_NAME
 
#mvn clean site test -Dbuild.version="1.1"
#mvn package -Dbuild.version="1.1"
mvn package
echo "Executing Java programm ..."
java -jar $HOME/$WS_DIR/$REPO_NAME/target/Title_Validation_CSV_HW36-1.1-jar-with-dependencies.jar
#java -cp $HOME/$WS_DIR/$REPO_NAME/target/Title_Validation_CSV_HW36-1.1.jar $MAIN_CLASS $ARGS_01
read -p "Press Return to Close..."