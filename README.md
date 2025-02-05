# Docker mongosh

A docker image for the [MongoDB Shell](https://github.com/mongodb-js/mongosh).

> The MongoDB Shell, mongosh, is a fully functional JavaScript environment for
> interacting with MongoDB deployments. You can use the MongoDB Shell to test
> queries and operations directly with your database.

**Note:** Built on mongosh 2.3.8

## Usage

Pull the docker image.

```sh
docker pull gooseus/mongosh:latest
```

Alias it in your shell.

Bash:

```sh
alias mongosh='docker run -it --rm --network host -v $(pwd):/root mongosh:latest'
```

And finally, run it as you typically would.

```sh
mongosh "mongodb://mongo-host:27017/database" --eval "print(db.collection.countDocuments());"
```

## Building

```sh
git clone git@github.com:gooseus/docker-mongosh.git
cd docker-mongosh
docker build -t mongosh:latest .
docker run -it --rm mongosh:latest
```
