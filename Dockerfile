FROM docker:19.03

RUN apk add bash wget maven
RUN wget https://github.com/buildpacks/pack/releases/download/v0.13.1/pack-v0.13.1-linux.tgz && \
    tar xvf pack-v0.13.1-linux.tgz && \
    rm pack-v0.13.1-linux.tgz && \
    mv pack /usr/local/bin/pack
CMD ["pack"]
