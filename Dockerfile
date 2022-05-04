FROM docker:20

RUN apk add bash wget maven
RUN wget https://github.com/buildpacks/pack/releases/download/v0.25.0/pack-v0.25.0-linux.tgz && \
    tar xvf pack-v0.25.0-linux.tgz && \
    rm pack-v0.25.0-linux.tgz && \
    mv pack /usr/local/bin/pack
CMD ["pack"]
