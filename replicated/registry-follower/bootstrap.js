var Promise = require('bluebird')
var knex = require('knex')
var c = knex({client: 'pg', connection: {driver: 'pg', user: 'postgres', host: process.env.DOCKER_ADDR}})

function createDb (name) {
  return new Promise(function (resolve, reject) {
    return c.raw('CREATE DATABASE ' + name)
      .then(function () {
        console.info('created', name)
        resolve()
      })
      .catch(function (e) {
        if (e.code === '42P04') {
          console.info('existed', name)
          return resolve()
        } else return reject()
      })
  })
}

createDb('registry_relational')
  .then(function () {
    return createDb('oauth2_server')
  })
  .then(function () {
    process.exit(0)
  })
  .catch(function () {
    process.exit(1)
  })
