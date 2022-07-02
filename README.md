# mail-server-playground
This is mail-server playground

# how to use
1. docker build and run
```
% docker-compose up
```

2. login container
```
% docker exec -it postfix bash
```

3. send mail in container
```
# mailsend -f hoge@example.com -t fuga@example.com
```
