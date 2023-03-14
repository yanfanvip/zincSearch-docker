FROM alpine
MAINTAINER Fritz.Yan <yanfanvip@foxmail.com>
ENV VERSION=0.4.2
RUN wget "https://github.com/zinclabs/zincsearch/releases/download/v${VERSION}/zincsearch_${VERSION}_Linux_x86_64.tar.gz" && \
  tar -xzf "zincsearch_${VERSION}_Linux_x86_64.tar.gz" && \
  rm -rf "zincsearch_${VERSION}_Linux_x86_64.tar.gz"
EXPOSE 3030
VOLUME [ "/data"]
CMD ["./zincsearch"]
