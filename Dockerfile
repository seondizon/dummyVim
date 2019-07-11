FROM ubuntu:16.04
# add proxy if needed
#ENV HTTP_PROXY="http://dizon.jm:pass@proxy"
#ENV HTTPS_PROXY="http://dizon.jm:pass@proxy"
RUN apt-get update && \
    apt-get install -y \
    ruby-full \
    postgresql \
    postgresql-contrib \
    net-tools
RUN update-rc.d postgresql enable && service postgresql start
CMD [ "irb" ]