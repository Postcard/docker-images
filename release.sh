set -ex

COMPANY=figure
IMAGE_1=raspberry-pi2
IMAGE_2=raspberry-pi3

# Get version
version=`cat VERSION`
echo "version: $version"

# build images
chmod +x raspberry-pi2/build.sh
./raspberry-pi2/build.sh

chmod +x raspberry-pi3/build.sh
./raspberry-pi3/build.sh

# tag it
git commit -m "Bump to version $version"
git tag -a "$version" -m "version $version"
git push
git push --tags

docker tag $COMPANY/$IMAGE_1:latest $COMPANY/$IMAGE_1:$version
docker tag $COMPANY/$IMAGE_2:latest $COMPANY/$IMAGE_2:$version
# push it
docker push $COMPANY/$IMAGE_1:latest
docker push $COMPANY/$IMAGE_1:$version

docker push $COMPANY/$IMAGE_2:latest
docker push $COMPANY/$IMAGE_2:$version