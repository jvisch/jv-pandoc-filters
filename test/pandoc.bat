rem https://github.com/jvisch/jv-docker-files/tree/main/pandoc-docker
docker run -ti -v "%~dp0:/sources/" --rm  jv/pandoc-docker %*