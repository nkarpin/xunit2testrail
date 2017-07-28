# xunit2testrail
Docker container for upload xunit Tempest results to testrail

Your xml file has to be mount to /srv/report.xml

Example start the container:

```
docker run --rm -v /root/tempest-report.xml:/srv/report.xml \
  -e PASS=testrail_password \
  -e SHORT_TEST_GROUP=All-In-One.Smoke \
  alrem/xunit2testrail
```

