# xunit2testrail
Docker container for upload xunit Tempest results to testrail

Example start the container:
`docker run --rm -v /root/:/report/ -e REPORT=report.xml -e PASS=testrail_password -e SHORT_TEST_GROUP=All-In-One.Smoke alrem/xunit2testrail`


