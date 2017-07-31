# xunit2testrail
Docker container for upload xunit Tempest results to testrail

Your xml file has to be mounted to /srv/report.xml

Example start the container:

```
docker run --rm -v /root/tempest-report.xml:/srv/report.xml \
  -e PASS=testrail_password \
  -e SHORT_TEST_GROUP=All-In-One.Smoke \
  alrem/xunit2testrail
```

## Used variables:

* **REPORT** - Full path to report file. By default `REPORT=/srv/report.xml`
* **TESTRAIL_USER** - Username for Testrail 
* **PASS** - Password for Testrail
* **TESTRAIL_URL** - Testrail URL. By default `TESTRAIL_URL="https://mirantis.testrail.com"`
* **TESTRAIL_PROJECT** - Testrail project name. By default `TESTRAIL_PROJECT='Mirantis Cloud Platform'`
* **TESTRAIL_PLAN_NAME** - Testaril plan name. By defaul `TESTRAIL_PLAN_NAME="[MCP1.1]All-In-One"`
* **TESTRAIL_MILESTONE** - Milestone's name. By default `TESTRAIL_MILESTONE='MCP1.1'`
* **TESTRAIL_SUITE** - Test suite's name. By default `TESTRAIL_SUITE='Tempest 15.0.0'`
* **TEST_GROUP** - Test group's name. You can use `SHORT_TEST_GROUP` instead `TEST_GROUP`. In this case `TEST_GROUP = SHORT_TEST_GROUP + DATE`
* **DEBUG** - any value in this variable switch on a debug mode.
