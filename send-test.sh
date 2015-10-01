#!/bin/bash
echo "testproject.testcountry.testmodule1.testsite1.processed:1|c" | nc -u -w0 127.0.0.1 8125
echo "testproject.testcountry.testmodule1.testsite1.failed:1|c" | nc -u -w0 127.0.0.1 8125
echo "testproject.testcountry.testmodule1.testsite2.processed:1|c" | nc -u -w0 127.0.0.1 8125
echo "testproject.testcountry.testmodule2.processed:1|c" | nc -u -w0 127.0.0.1 8125
