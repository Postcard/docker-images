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
git commit --allow-empty -m "Bump to version $version"
git tag -a "$version" -m "version $version"
git push origin
git push origin --tags

docker tag $COMPANY/raspberry-pi2:latest $COMPANY/raspberry-pi2:$version
docker tag $COMPANY/raspberry-pi2:latest $COMPANY/raspberrypi2:latest
docker tag $COMPANY/raspberry-pi2:latest $COMPANY/raspberrypi2:$version

docker tag $COMPANY/raspberry-pi3:latest $COMPANY/raspberry-pi3:$version
docker tag $COMPANY/raspberry-pi3:latest $COMPANY/raspberrypi3:latest
docker tag $COMPANY/raspberry-pi3:latest $COMPANY/raspberrypi3:$version

# push it
docker push $COMPANY/raspberry-pi2:latest
docker push $COMPANY/raspberry-pi2:$version

docker push $COMPANY/raspberry-pi3:latest
docker push $COMPANY/raspberry-pi3:$version

docker push $COMPANY/raspberrypi2:latest
docker push $COMPANY/raspberrypi2:$version

docker push $COMPANY/raspberrypi3:latest
docker push $COMPANY/raspberrypi3:$version