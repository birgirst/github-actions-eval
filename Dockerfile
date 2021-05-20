FROM busybox

RUN mkdir -p /www/_

RUN echo "<html><body><h1>Hello FIAAS!</h1></body></html>" > /www/index.html

RUN echo "<html><body><h1>Ok!</h1></body></html>" > /www/_/health

RUN echo "<html><body><h1>Ok!</h1></body></html>" > /www/_/ready

EXPOSE 8080

# Create a basic webserver and sleep forever
CMD httpd -p 8080 -h /www; tail -f /dev/null
