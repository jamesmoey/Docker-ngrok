FROM busybox:ubuntu-14.04
MAINTAINER Grafikart

# Install ngrok
ADD https://dl.ngrok.com/ngrok_2.0.19_linux_amd64.zip /
RUN unzip -o ngrok_2.0.19_linux_amd64.zip -d /bin && \
 rm -f ngrok_2.0.19_linux_amd64.zip

#Add config script
ADD ngrok_discover /bin/ngrok_discover
RUN chmod +x /bin/ngrok_discover

CMD ["/bin/ngrok_discover"]