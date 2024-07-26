FROM nginx as base 
SHELL ["/bin/bash", "-c"]
WORKDIR /usr/src/app
RUN apt update && apt install git nginx unzip -y
RUN curl -fsSL https://bun.sh/install | bash
RUN git clone https://github.com/Fedex95/xd
WORKDIR ./xd/
RUN $HOME/.bun/bin/bun i
RUN $HOME/.bun/bin/bun run build
RUN rm -rf /usr/share/nginx/html/*
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY localhost.* /usr/share/nginx/
RUN chown $USER:$USER /usr/share/nginx/localhost.*
RUN cp -r ./dist/* /usr/share/nginx/html

