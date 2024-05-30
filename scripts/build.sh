#!/bin/bash

set -e
set -o pipefail
set -x

SCRIPT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ROOT_DIRECTORY="${SCRIPT_DIRECTORY}/.."

# Build the package.

cd "$ROOT_DIRECTORY"

xcodebuild -scheme Frontmatter -showdestinations
xcodebuild -scheme Frontmatter -destination "platform=macOS" clean build
xcodebuild -scheme Frontmatter -destination "platform=iOS Simulator,name=iPhone 14 Pro" clean build
