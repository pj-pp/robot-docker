#!/usr/bin/env bash
echo "+++ Running test"
robot \
    --outputdir /opt/robotframework/reports \
    --log log.html \
    --report report.html \
    --variable "env:${ROBOT_ENV}" \
    --include "${ROBOT_TAG}" \
    ${ROBOT_TEST_PATH}
RC=$?
