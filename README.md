## secrets-server
 Minimalist build-secrets server for use when building containers, based on busybox

Simply pass any secrets you want exposed over HTTP on port 8000 as environment variables prefixed with `SECRET_`

On startup, the secrets-server creates a file for each environment variable starting with `SECRET_`, with the filename being the name of the environment variable and the file's content being the value of the variable environment

For example, starting the secrets-server with the environment variable `SECRET_Hello=World` will make it possible to use an HTTP request to get the value: `GET http://localhost:8000/Hello` will return `World`
