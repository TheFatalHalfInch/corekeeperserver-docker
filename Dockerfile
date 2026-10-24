#download base image to work with
FROM steamcmd/steamcmd:ubuntu-22

## non root user
#vars
#ENV NONROOTUSER="corekeeperserver"
#create non root user
#RUN useradd -mrU ${NONROOTUSER}
#set install directory
#ENV INSTALLDIR="/home/${NONROOTUSER}"
##

## root user
ENV INSTALLDIR="/opt/corekeeperserver"
##

#download the corekeeper files
RUN steamcmd +force_install_dir ${INSTALLDIR} +login anonymous +app_update 1007 validate +app_update 1963720 validate +quit

#download corekeeper requirements found in _launch.sh file
#RUN apt-get update; \
#    apt-get install xvfb libxi6 -y

## non root user
#switch to non root user
#USER ${NONROOTUSER}
##

## server config location
#/root/.config/unity3d/Pugstorm/Core Keeper/DedicatedServer/ServerConfig.json

## world file location
#${INSTALLDIR}/CoreKeeperServer_Data

## mod folder location (doesn't exist in vanilla install)
#${INSTALLDIR}/CorekeeperServer_Data/StreamingAssets/Mods

#switch working directory
WORKDIR ${INSTALLDIR}

#run the launch script when the container is executed
ENTRYPOINT ["./_launch.sh"]