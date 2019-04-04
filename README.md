# transmission-docker

Docker image for transmission daemon (webUI).

### Ports exposed

* 9091 For the web interface
* 51413 This port is required only for uploading. Do forward this port on your router if you plan on seeding

### Volumes
* /output is the default folder for transmission to store the downloaded files. Be sure to map it to your desired location on your host
* /to_download is a folder the container will watch. If a torrent file is added to this folder, transmission will automatically start downloading it

### Usage
Please check the docker-compose.yml example provided for reference
