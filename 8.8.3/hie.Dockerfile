FROM haskell:8.8.3

RUN git clone https://github.com/haskell/haskell-ide-engine.git && \
    cd haskell-ide-engine && \
    sed -i '/resolver: lts-14.27/d' install/shake.yaml && \
    sed -i 's/# resolver: lts-15.7 # lts GHC 8.8.3/resolver: lts-15.7 # lts GHC 8.8.3/g' install/shake.yaml && \
    stack ./install.hs hie-8.8.3 && \
    cd .. && \
    rm -rf haskell-ide-engine
