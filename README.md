# docker-custom-aws-cli

Docker image to use aws-cli with following tools installed
- inotifywait
- jq

# Build and push image to Github package
```shell
docker build -t docker.pkg.github.com/paytmlabs/docker-custom-aws-cli/aws-cli:<version> .

echo "$GH_AUTH_SECRET" | docker login docker.pkg.github.com -u $GH_USER --password-stdin
docker push docker.pkg.github.com/paytmlabs/docker-custom-aws-cli/aws-cli:<version>
```