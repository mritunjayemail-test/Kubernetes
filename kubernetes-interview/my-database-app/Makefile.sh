
VERSION=v1
REGISTRY=ashupost

# builds a docker image that builds the app and packages it into a minimal docker image
docker build -t ${REGISTRY}/my-database-app:${VERSION} .

# push the image to an registry
docker push ${REGISTRY}/my-database-app:${VERSION}
