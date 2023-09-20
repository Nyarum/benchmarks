I'm just started learning OCaml and intrigue how fast it is  

So I prepared two examples for Go and OCaml  
Go using std server  
OCaml using eio based on multicore (>5.0 version)  

Results are:

For go:
```
This is ApacheBench, Version 2.3 <$Revision: 1879490 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 1000000 requests
Completed 2000000 requests
Completed 3000000 requests
Completed 4000000 requests
Completed 5000000 requests
Completed 6000000 requests
Completed 7000000 requests
Completed 8000000 requests
Completed 9000000 requests
Completed 10000000 requests
Finished 10000000 requests


Server Software:
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        13 bytes

Concurrency Level:      100
Time taken for tests:   203.900 seconds
Complete requests:      10000000
Failed requests:        0
Total transferred:      1300000000 bytes
HTML transferred:       130000000 bytes
Requests per second:    49043.56 [#/sec] (mean)
Time per request:       2.039 [ms] (mean)
Time per request:       0.020 [ms] (mean, across all concurrent requests)
Transfer rate:          6226.23 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   0.2      1       6
Processing:     0    1   0.3      1      16
Waiting:        0    1   0.3      1      15
Total:          0    2   0.4      2      16

Percentage of the requests served within a certain time (ms)
  50%      2
  66%      2
  75%      2
  80%      2
  90%      2
  95%      3
  98%      3
  99%      4
 100%     16 (longest request)
```

For OCaml:
```
This is ApacheBench, Version 2.3 <$Revision: 1879490 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 1000000 requests
Completed 2000000 requests
Completed 3000000 requests
Completed 4000000 requests
Completed 5000000 requests
Completed 6000000 requests
Completed 7000000 requests
Completed 8000000 requests
Completed 9000000 requests
Completed 10000000 requests
Finished 10000000 requests


Server Software:
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      100
Time taken for tests:   155.621 seconds
Complete requests:      10000000
Failed requests:        0
Total transferred:      1210000000 bytes
HTML transferred:       50000000 bytes
Requests per second:    64258.66 [#/sec] (mean)
Time per request:       1.556 [ms] (mean)
Time per request:       0.016 [ms] (mean, across all concurrent requests)
Transfer rate:          7593.06 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       3
Processing:     0    2   0.2      2       7
Waiting:        0    2   0.2      1       6
Total:          1    2   0.2      2       7
ERROR: The median and mean for the waiting time are more than twice the standard
       deviation apart. These results are NOT reliable.

Percentage of the requests served within a certain time (ms)
  50%      2
  66%      2
  75%      2
  80%      2
  90%      2
  95%      2
  98%      2
  99%      2
 100%      7 (longest request)
```