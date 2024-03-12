# mobileRoboticsCourse


# install pre-requisites of the course
in case you have the ubuntu 22.04 installed,
```
sh setup_mte544.sh
```
that will take care of installing everything.

# installing docker
to use our docker image in the robohub turtlebot4.git repo, go ahead with installing 
docker on your machine,
```
sh setup_docker.sh
```

# To check the latency of the topics in turtlebot4s
go ahead with the Latency check script like this,



```
./latency_check.py topic msgType
# for example for scan topic
./latency_check.py /scan LaserScan 
```


