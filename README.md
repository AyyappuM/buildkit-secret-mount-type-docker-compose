# buildkit-secret-mount-type-docker-compose

Run `export export MY_SECRET_ENV=test`

Run `docker compose build --progress=plain --no-cache`

The secret value 'test' will be printed in the build command output in the console.

```
#6 [build stage-0 3/3] RUN --mount=type=secret,id=my_secret 	export MY_SECRET=$(cat /run/secrets/my_secret) &&  	echo $MY_SECRET
#6 0.999 test
#6 DONE 1.1s
```