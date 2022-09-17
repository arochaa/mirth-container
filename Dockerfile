FROM --platform=linux/x86_64 nextgenhealthcare/connect:3.10.1-jdk

USER root

RUN chgrp -R 0 /opt/connect && \
    chmod -R g=u /opt/connect

USER mirth