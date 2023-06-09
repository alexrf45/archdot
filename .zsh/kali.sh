#!/bin/bash

kali $1 ()
{
  mkdir $1 && cd $1 && \
    docker run --name $1 -it \
      --net=host --entrypoint=/bin/zsh \
      --cap-add=NET_ADMIN \
      -v $HOME/.katet:/home/kali/.katet \
      -v $HOME/.Xauthority:/home/kali/.Xauthority:ro \
      -v /tmp/.X11-unix:/tmp/.X11-unix \
      -v `pwd`/.kali-logs:/root/.logs:rw \
      -v `pwd`:/$1 \
      -w /$1 \
      -e DISPLAY=$DISPLAY \
      -e TARGET=$TARGET -e IP=$IP -e DOMAIN=$DOMAIN \
      -e TZ=$TIME_ZONE -e NAME=$1 \
      fonalex45/katet:latest
}

kali-start $1 ()
{
 docker container start $1
}

kali-enter $1 ()
{
docker exec -it $1 /bin/zsh
}

kali-stop $1 () {
 docker container stop $1
}

kali-destory $1 () {
 docker container rm $1
}
