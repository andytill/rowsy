# eleveldb range scan simulator

Build and run...

```
make deps app shell
```

Test out a range scan...

```erlang
rowsy:rs({1,'_'},{1,4},true,true,[{1,N} || N <- lists:seq(1,10)]).
```
