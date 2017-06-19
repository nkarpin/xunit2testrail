#!/bin/bash
test $DEBUG && set -x && CMD='echo'

if ! [ -a  $REPORT ]; then
  echo "$REPORT is not mounted"
  exit 1
fi

DATE=`date +%Y%m%d`

if ! $TEST_GROUP ; then
  TEST_GROUP="${SHORT_TEST_GROUP}.$DATE"
fi


echo report -v \
--testrail-plan-name "$TESTRAIL_PLAN_NAME" \
--env-description "$TEST_GROUP" \
--testrail-url  "$TESTRAIL_URL" \
--testrail-user "$TESTRAIL_USER" \
--testrail-password "$TESTRAIL_PASSWORD" \
--testrail-project "$TESTRAIL_PROJECT" \
--testrail-milestone "$TESTRAIL_MILESTONE" \
--testrail-suite "$TESTRAIL_SUITE" \
--testrail-name-template '{title}' \
--xunit-name-template '{classname}.{methodname}' $REPORT


#test $DEBUG && /bin/bash
