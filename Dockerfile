#download base image to work with
FROM steamcmd/steamcmd:ubuntu-22

#create service user
RUN useradd -mrU corekeeper-server

#switch to service user
#USER corekeeper-server

#switch working directory
#WORKDIR /home/corekeeper-server

#download the corekeeper files
RUN steamcmd +force_install_dir /home/corekeeper-server +login anonymous +app_update 1007 validate +app_update 1963720 validate +quit