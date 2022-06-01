FROM ubuntu
COPY install.sh / 
RUN /install.sh

COPY entrypoint.sh /
EXPOSE 5900

ENTRYPOINT ["/entrypoint.sh"]
