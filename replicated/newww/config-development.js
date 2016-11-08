module.exports = {
  "connection": {
    "driver": "pg",
    "user": "postgres",
    "host": process.env.DOCKER_ADDR,
    "database": "oauth2_server"
  },
  "pool": {
    "min": 0,
    "max": 7
  }
}
