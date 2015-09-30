#!/bin/bash
echo "testproject.testmodule.testsite1.processed:1|c" | nc -u -w0 127.0.0.1 8125
echo "testproject.testmodule.testsite1.failed:1|c" | nc -u -w0 127.0.0.1 8125
echo "testproject.testmodule.testsite2.processed:1|c" | nc -u -w0 127.0.0.1 8125
