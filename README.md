#Docker tag:latest

Testing how latest tag actually works.

```
FROM alpine:latest

RUN echo "#!/bin/sh\n" > /test.sh

RUN echo "echo \"this is version 1\"" >> /test.sh

ENTRYPOINT ["sh", "/test.sh"]
```

Build a test version

```
docker build -t potato .
```

Test it

```
docker run potato
```

It outputs 'this is version 1' :D

Commit changes and push to GitHub. 

Setup automated build on Docker hub; source = master.

Run 

```
docker pull neilspink/fictional-potato:latest
docker run neilspink/fictional-potato:latest
```

Result as expected v1 appears.

Updating Dockerfile to v2, committing changes and push.



