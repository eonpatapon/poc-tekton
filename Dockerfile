FROM ubuntu

ADD ./main /bin/main
RUN chmod 755 /bin/main
ENTRYPOINT [ "/bin/main" ]
EXPOSE 8080
