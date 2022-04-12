# ns3-docker

## 1 build image
```
docker build -t ns3 -f ns3_pure.Dockerfile .
```

## 2 create container
```
docker run -it -v ~/ns3-src/:/ns3-src --name=ns3-dev ns3 /bin/zsh
docker exec -it ns3-dev zsh
```

## 3 get and compile ns-3-dev
```
cd ns3-src
git clone git@gitlab.com:nsnam/ns-3-dev.git
git tag
git checkout ns-3.35
./waf
```
