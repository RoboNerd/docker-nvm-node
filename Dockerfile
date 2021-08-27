FROM ubuntu:20.04
ADD sources.list /etc/apt/
ARG DEBIAN_FRONTEND=noninteractive
RUN  apt-get update && \
     apt-get install -y curl && \
     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash && \
     export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" && \
     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && \
     nvm install 12.22.5 && \
     nvm use 12.22.5 && \
     npm install -g nrm yarn && \
     nrm use taobao
CMD ["node"]
