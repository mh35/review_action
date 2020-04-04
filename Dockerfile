FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y texlive-full fonts-ipaexfont fonts-ipafont
RUN gem install bundler review math_ml
RUN kanji-config-updmap-sys ipaex
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]