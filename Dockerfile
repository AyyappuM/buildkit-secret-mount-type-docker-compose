FROM alpine:latest

RUN --mount=type=secret,id=my_secret \
	export MY_SECRET=$(cat /run/secrets/my_secret) && \
 	echo $MY_SECRET
