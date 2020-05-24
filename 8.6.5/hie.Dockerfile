FROM haskell:8.6.5

RUN stack upgrade --binary-only && \
    git clone https://github.com/haskell/haskell-ide-engine.git && \
    cd haskell-ide-engine && \
    stack ./install.hs hie-8.6.5 && \
    cd .. && \
    rm -rf haskell-ide-engine
