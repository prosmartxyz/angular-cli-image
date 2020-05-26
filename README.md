## Node Alpine + SDK based Docker Image
Docker image to speed up auto-builds on Docker Hub or any other CI/CD system for JavaScript projects.

Pre Installed in this image:
- alpine-sdk
- make
- g++
- Python
- Git

We use it to build **Angular CLI** projects because of f%$·&% Node Gyp and other SASS dependencies. You can use it as you wish, we try to keep latest Node version, be aware of that. See DOCKERFILE for more information.

For local use just...
````
docker pull prosmartxyz/angular-cli:latest
````
When using in your Dockerfile as multi layer just call it in your `FROM` block...
````
FROM prosmartxyz/angular-cli as app-builder
...
````
### Bad naming, we know...
In early stages of Angular CLI, build process used globally installed Angular CLI, so, to speed up builds in our CI system we pre-installed `@angular/cli`. Now it is not useful because it uses locally installed CLI, **BUT**, you still need the installed SDKs listed above.