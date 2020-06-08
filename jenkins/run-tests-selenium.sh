#!/usr/bin/env bash

VERSION=${1:-latest}

docker run --rm -v "$(pwd)"/test_report:/app/report seleniumbase-jenkins-tests:${VERSION}

status=$?

echo "Final status ${status}"
exit ${status}