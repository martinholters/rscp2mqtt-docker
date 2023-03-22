FROM alpine
RUN apk --no-cache add git g++ make mosquitto-dev
WORKDIR /root
RUN git clone --branch v2.0.9 https://github.com/pvtom/rscp2mqtt.git
WORKDIR /root/rscp2mqtt
RUN make
RUN mkdir -p /opt/rscp2mqtt
RUN cp -a rscp2mqtt /opt/rscp2mqtt
RUN cp config.template /opt/rscp2mqtt/.config

FROM alpine
RUN apk --no-cache add libstdc++ mosquitto
COPY --from=0 /opt/rscp2mqtt /opt/rscp2mqtt
WORKDIR /opt/rscp2mqtt
CMD /opt/rscp2mqtt/rscp2mqtt
