#!/usr/bin/env bash
curl -XPUT localhost:9200/_template/statsd-template -d '
{
    "template" : "statsd-*",
    "settings" : {
        "number_of_shards" : 1
    },
    "mappings" : {
        "counter" : {
            "_source" : { "enabled" : true },
            "properties": {
                "@timestamp": {
                    "type": "date"
                },
                "value": {
                    "type": "long",
                    "index": "not_analyzed"
                },
                "project": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "country": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "module": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "site": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "status": {
                    "type": "string",
                    "index": "not_analyzed"
                }
            }
        },
        "gauge" : {
            "_source" : { "enabled" : true },
            "properties": {
                "@timestamp": {
                    "type": "date"
                },
                "value": {
                    "type": "long",
                    "index": "not_analyzed"
                },
                "project": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "country": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "module": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "site": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "status": {
                    "type": "string",
                    "index": "not_analyzed"
                }
            }
        },
        "timer" : {
            "_source" : { "enabled" : true },
            "properties": {
                "@timestamp": {
                    "type": "date"
                },
                "value": {
                    "type": "long",
                    "index": "not_analyzed"
                },
                "project": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "country": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "module": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "site": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "status": {
                    "type": "string",
                    "index": "not_analyzed"
                }
            }
        }
    }
}'
