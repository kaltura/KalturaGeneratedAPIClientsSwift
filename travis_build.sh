# Abort on Error
set -e

SLEEP=30s
BUILD_OUTPUT=/tmp/build.out

touch $BUILD_OUTPUT

dump_output() {
   echo Tailing the last 500 lines of output:
   cat $BUILD_OUTPUT | xcpretty 
}
error_handler() {
  echo ERROR: An error was encountered with the build.
  dump_output
  exit 1
}
# If an error occurs, run our error handler to output a tail of the build
trap 'error_handler' ERR

# Set up a repeating loop to send some output to Travis.

bash -c "while true; do tail -100 $BUILD_OUTPUT; sleep $SLEEP; done" &
PING_LOOP_PID=$!

xcodebuild clean build test -workspace Example/KalturaClient.xcworkspace -scheme KalturaClient_Tests -destination 'platform=iOS Simulator,name=iPhone 7 Plus,OS=10.3.1' > $BUILD_OUTPUT 2>&1


# The build finished without returning an error so dump a tail of the output
dump_output

# nicely terminate the ping output loop
kill $PING_LOOP_PID
