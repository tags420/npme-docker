# npme Docker Images

**UPDATE 2016-04-20**: This README is out-of-date. npm Enterprise now consists of several Docker images, including a registry and a website. The easiest way to pull and run them is using the [npme installer](https://github.com/npm/npme-installer). Please refer to the following to get started:

- [Run the npm Enterprise AMI](http://blog.npmjs.org/post/142409778875/run-npm-enterprise-on-aws-with-just-a-few-clicks)
- [Quickstart](https://docs.npmjs.com/enterprise/intro)
- [Installation Guide](https://docs.npmjs.com/enterprise/installation)

## Running npm Enterprise as a container

1. clone this repo.
2. visit https://www.npmjs.org/enterprise, and signup for a license.
3. run `npm install; npm run-script configure`.
  * enter the the appropriate configuration info, including the license you just validated.
  * if you'd like a more specialized installation, edit `service.json` manually.
4. build the docker image: `docker build -t npme .`.
5. run the docker container: `docker run -p 8080:8080 -t npme`.

You should now have a functional private registry, that's all there is to it!

## Running npm Enterprise as an Interactive Container

1. rather than running `docker run -p 8080:8080 -t npme`, run:

`docker run -i -p 8080:8080 -t npme bash`

2. to start up npm Enterprise, run:
  1. `cd /etc/npme`
  2. run: `service redis-server start | service nginx start | couchdb | npme restart | tail -f ./logs/*`
3. to experiment with configuration changes:
  1. `cd /etc/npme`
  2. edit `/etc/npme/service.json`.
  3. run `ndm generate`.
  4. start npm Enterprise (`service redis-server start | service nginx start | couchdb | npme restart | tail -f ./logs/*`).

## Tips and Tricks

On OSX I needed to open up port `:8080`:

```bash
VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port8080,tcp,,8080,,8080";
```

To start a shell in a running npm Enterprise container, you can run `docker exec
-t -i <container-id> bash`.

## License

(c) 2014 - npm, Inc. See LICENSE.txt for details.
