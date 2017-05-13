
set -ex

# docker hub company
COMPANY=figure
# image name
IMAGE=raspberry-pi3
docker build -t $COMPANY/$IMAGE:latest .