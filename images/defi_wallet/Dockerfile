FROM node:current as builder

ARG BUILD_VERSION

# If build version is given as build-arg, download that specific version, otherwise, scrape the last version from the Github API
RUN echo ${BUILD_VERSION:-$(curl -sL https://api.github.com/repos/DefiCh/app/releases/latest | grep .tag_name | tr -d " \"tag_nme:,v")} > ~/.wallet_version

RUN mkdir -p /usr/src/defich && \
 cd /usr/src/defich && \
 curl -L https://github.com/DeFiCh/app/archive/v$(cat ~/.wallet_version).tar.gz > app.tar.gz && \
 tar xvzf app.tar.gz && \ 
 mv /usr/src/defich/app-$(cat ~/.wallet_version) /home/node/app

WORKDIR /home/node/app
RUN npm run init

WORKDIR /home/node/app/webapp

# hardcode isWalletCreatedConf to true
RUN cd ./src/containers/WalletPage/ && \
    cat saga.tsx | \
    perl -pe 'BEGIN{undef $/;} s/(const isWalletCreatedConf =)[\s\S]*?;/$1 true;/' > \
    saga-new.tsx && \
    mv saga-new.tsx saga.tsx

# hardcode rpc connect settings
RUN cd ./src/utils && \
    cat rpc-client.ts | \
    perl -pe 'BEGIN{undef $/;} s/const \{ rpcuser[\s\S]*?\.rpcport\;/const rpcconnect=window.location.hostname; const rpcport="5001"; const rpcuser="definode_user"; const rpcpassword="definode_pw";/' > \
    rpc-client-new.ts && \
    mv rpc-client-new.ts rpc-client.ts

RUN npm run build:react

FROM nginx:alpine

COPY --from=builder /home/node/app/webapp/build/release/ /usr/share/nginx/html/

# default.conf.template contains nginx configuration, the templates are automatically picked up by the entry point script and environment variables are injected
COPY default.conf.template /etc/nginx/templates/

# this script is picked up automatically by docker-entrypoint.sh. It does base64 encoding of the RPC_AUTH environment variable.
COPY 00-base64encode-rpcauth.sh /docker-entrypoint.d/
RUN chmod 775 /docker-entrypoint.d/00-base64encode-rpcauth.sh

# Port 5000 is the webapp, port 5001 is the reverse proxy for calls to the node
EXPOSE 5000/tcp
EXPOSE 5001/tcp
