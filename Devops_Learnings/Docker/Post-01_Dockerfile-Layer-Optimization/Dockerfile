# bad layering
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get clean

# good layering
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean
