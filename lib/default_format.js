
var counters = function (key, value, ts, bucket) {
    var listKeys = key.split('.');
    var status = listKeys.splice(-1, 1);
    bucket.push({
		"project": listKeys[0] || '',
		"module": listKeys[1] || '',
		"site": listKeys[2] || '',
		"status": status || '',
		"value": value,
		"@timestamp": ts
	});
	return 1;
};

var timers = function (key, series, ts, bucket) {
    var listKeys = key.split('.');
    var status = listKeys.splice(-1, 1);
    for (keyTimer in series) {
        bucket.push({
            "project": listKeys[0] || '',
            "module": listKeys[1] || '',
            "site": listKeys[2] || '',
            "status": status || '',
            "value": value,
            "@timestamp": ts
	    });
    }
	return series.length;
};

exports.counters   = counters;
exports.timers     = timers;
exports.gauges     = counters;
