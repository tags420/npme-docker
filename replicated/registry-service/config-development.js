module.exports = {
  "connection": {
    "driver": "pg",
    "user": "postgres",
    "host": process.env.DOCKER_ADDR,
    "database": "registry_relational"
  },
  "pool": {
    "min": 0,
    "max": 7
  }
}
