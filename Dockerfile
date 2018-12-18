FROM diuis/docker-emsdk-base-python3:v1.0.0

USER appuser
RUN  cd /home/appuser/emsdk && \
    ./emsdk update-tags && \
    ./emsdk install clang-e1.38.21-64bit emscripten-1.38.21 binaryen-tag-1.38.21-64bit && \
    ./emsdk activate clang-e1.38.21-64bit emscripten-1.38.21 binaryen-tag-1.38.21-64bit