#!/bin/sh
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
echo "Gradle is not installed. Open this project in Android Studio and let it download the Gradle distribution, then run the build from Android Studio." >&2
exit 1
