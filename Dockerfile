FROM nginx:alpine

LABEL maintainer="Eskie Cirrus James Maquilang, C)PEH <ecjmaquic@gmail.com>"
LABEL version="1.0"

COPY . /cdn
WORKDIR /cdn

ARG DOMAIN=spgensantos.ph
ARG IPADDR=173.254.88.148

RUN ln -s /cdn/cdn-eskie.conf /etc/nginx/conf.d/cdn-eskie.conf
RUN mkdir -p /opt/cache/cdn_data

RUN chmod +x change-domain.sh && \
  chmod +x change-ip.sh

RUN ./change-domain.sh ${DOMAIN} && \
  ./change-ip.sh ${IPADDR}

EXPOSE 80 443