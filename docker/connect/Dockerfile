FROM kubeless/unzip as unzip
RUN mkdir /debezium-plugins
COPY debezium-debezium-connector-mysql-1.8.1.zip /debezium-plugins
WORKDIR /debezium-plugins
RUN unzip debezium-debezium-connector-mysql-1.8.1.zip &&\
    rm debezium-debezium-connector-mysql-1.8.1.zip

FROM cnfldemos/cp-server-connect-datagen:0.5.0-6.2.0
ENV CONFLUENT_HUB_PLUGINS=/usr/share/confluent-hub-components

COPY --from=unzip /debezium-plugins $CONFLUENT_HUB_PLUGINS
