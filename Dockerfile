FROM alpine:latest

RUN echo "#!/bin/sh\n" > /test.sh

RUN echo "echo \"this is version 2\"" >> /test.sh

ENTRYPOINT ["sh", "/test.sh"]