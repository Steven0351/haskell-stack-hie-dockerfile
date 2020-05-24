FROM haskell:8.8.3

RUN git clone https://github.com/haskell/haskell-language-server.git && \
    cd haskell-language-server && \
    git checkout 0.1 && \
    sed -i 's/resolver: lts-14.11 # GHC 8.6.5/resolver: lts-15.10/g' install/shake.yaml && \
    stack ./install.hs hls-8.8.3 && \
    cd .. && \
    rm -rf haskell-language-server
    