## @angular/cli@latest based Docker image
Docker image to speed up auto-builds on Docker Hub or any other CI/CD system for Angular projects.

For local use just...
````
docker pull prosmartxyz/angular-cli:latest
````
When using in your Dockerfile as multi layer just call it in your `FROM` block...
````
FROM prosmartxyz/angular-cli as app-builder
...
````
### Specifications
- Node 10.13 (Alpine)
- @angular/cli@latest