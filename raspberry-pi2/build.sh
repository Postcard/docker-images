
set -ex

# docker hub company
COMPANY=figure
# image name
IMAGE=raspberry-pi2
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build -t $COMPANY/$IMAGE:latest $DIR