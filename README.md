# eleveldb range scan simulator

Build and run...

```
make deps app shell
```

Test out a range scan...

```erlang
1> rowsy:rs({1,'_'},{1,4},true,true,[{1,N} || N <- lists:seq(1,10)]).
DROPPED from START []
DROPPED from END   [{1,5},{1,6},{1,7},{1,8},{1,9},{1,10}]
[{1,1},{1,2},{1,3},{1,4}]
```
