FROM ubuntu:focal  

ENV OLLAMA_HOST 0.0.0.0:11434
ENV OLLAMA_MAX_LOADED_MODELS 4
ENV OLLAMA_NUM_PARALLEL 20
ENV OLLAMA_KEEP_ALIVE 720h

COPY sources.list /etc/apt/sources.list
COPY ollama-linux-amd64 /usr/bin/ollama

CMD ["ollama", "serve"]
