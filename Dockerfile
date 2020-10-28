FROM python:3.8-alpine

RUN addgroup -S j2 && adduser -S j2 -G j2 \
    && pip install --upgrade pip \
    && pip install j2cli==0.3.12b pyyaml \
    && mkdir -p /data && chown -R j2 /data

WORKDIR /data
USER j2
ENTRYPOINT ["j2"]
CMD ["--help"]
