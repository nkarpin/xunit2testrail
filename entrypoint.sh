#!/bin/bash
test $DEBUG && set -x && CMD='echo'

if [ ! -a report.xml ]; then
  echo 'report.xml is not mounted'
  exit 1
fi



DATE=`date +%Y%m%d%H%M`


exit 0

report -v \
--testrail-plan-name "$TESTRAIL_PLAN_NAME" \
--env-description "$TEST_GROUP" \
--testrail-url  "$TESTRAIL_URL" \
--testrail-user "$TESTRAIL_USER" \
--testrail-password "$TESTRAIL_PASSWORD" \
--testrail-project "$TESTRAIL_PROJECT" \
--testrail-milestone "$TESTRAIL_MILESTONE" \
--testrail-suite "$TESTRAIL_SUITE" \
--testrail-name-template '{title}' \
--xunit-name-template '{classname}.{methodname}' verification.xml


test $DEBUG && /bin/bash
