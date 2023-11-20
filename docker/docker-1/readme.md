* Primo passo provo a fare tutto con Docker da linea di comando.
* `docker image pull ghost:latest`
* `docker container run -d --name=test-ghost -p 8000:2368 -e NODE_ENV=development ghost:latest`
* Se poi visito il sito: `http://localhost:8000` se Dio vuole vedo Ghost.