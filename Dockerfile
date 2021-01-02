FROM busybox
ENV TINI_VERSION v0.19.0
RUN wget -O /tini https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static && chmod +x /tini
ENTRYPOINT ["/tini", "-g", "--"]

ADD ./init.sh ./init.sh
CMD ["ash", "./init.sh"]
EXPOSE 8000