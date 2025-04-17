#!/bin/bash

docker build -t hub.aws9.pri/shop ./shop
docker build -t hub.aws9.pri/blog ./blog
docker build -t hub.aws9.pri/news ./news

echo "password" | docker login hub.aws9.pri -u "username" --password-stdin

# password와 username 자리에 harbor의 유저와 패스워드 정보 넣기

docker push hub.aws9.pri/shop
docker push hub.aws9.pri/blog
docker push hub.aws9.pri/news

echo "push 완료"