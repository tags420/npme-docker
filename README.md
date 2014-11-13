# npme Docker

run npm Enterprise in a Docker container.

# Running npm Enterprise as a container

1. clone this repo.
2. visit https://www.npmjs.org/enterprise, and signup for a license.
3. run `npm install; npm run-script configure`.
  * enter the the appropriate configuration info, including the license you just validated.
  * if you'd like a more specialized installation, edit `service.json` manually.
4. build the docker image: `docker build -t npme .`.
5. run the docker container: `docker run -p 8080:8080 -t npme`.

You should now have a functional private registry, that's all there is to it!

# Caveats

On OSX I needed to open up port `:8080`:

```bash
VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port8080,tcp,,8080,,8080";
```

# License

(c) 2014 - npm, Inc. See LICENSE.txt for details.
