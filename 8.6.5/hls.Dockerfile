FROM haskell:8.6.5

RUN stack upgrade --binary-only && \
    git clone https://github.com/haskell/haskell-language-server.git && \
    cd haskell-language-server && \
    git checkout 0.1 && \
    stack ./install.hs hls-8.6.5 && \
    cd .. && \
    rm -rf haskell-language-server
