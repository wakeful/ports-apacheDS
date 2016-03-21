--- bin/apacheds.sh.orig	2016-03-21 18:16:49 UTC
+++ bin/apacheds.sh
@@ -51,9 +51,7 @@
 # Defaults
 ADS_SHUTDOWN_PORT=0
 
-# Detect ads home (http://stackoverflow.com/a/630387/516433)
-PROGRAM_DIR="`dirname \"$0\"`"
-[ -z "$ADS_HOME" ] && ADS_HOME="`(cd \"$PROGRAM_DIR/..\" && pwd)`"
+[ -z "$ADS_HOME" ] && ADS_HOME="/usr/local/apacheds"
 if [ -z "$ADS_HOME" ]; then
     echo "Unable to detect ADS_HOME, and not specified"
     exit 1
