FROM cm2network/steamcmd


RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir "./Eco Server" +app_update 739590 validate +quit
WORKDIR /home/steam/steamcmd/Eco\ Server
USER 0
RUN apt update && apt-get install -y libicu63 libgdiplus
EXPOSE 3000 3001
CMD [ "./EcoServer" ]
