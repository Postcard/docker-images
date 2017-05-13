
set -ex

# docker hub company
COMPANY=figure
# image name
IMAGE=raspberry-pi2
docker build -t $COMPANY/$IMAGE:latest .