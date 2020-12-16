FROM docker.io/curlimages/curl@sha256:a3e534fced74aeea171c4b59082f265d66914d09a71062739e5c871ed108a46e
LABEL maintainer="nagyesta@gmail.com"
USER root
RUN apk add git && rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*
USER curl_user
WORKDIR /home/curl_user
ENTRYPOINT ["/entrypoint.sh"] 
