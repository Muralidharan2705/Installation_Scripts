# Installation_Scripts
chmod +x install_jenkins.sh
 ./install_jenkins.sh
 This script will automate the installation process of OpenJDK 17 JRE Headless and
Jenkins

 chmod +x install_docker.sh
Then, you can run the script using:
 ./docker.sh


 chmod +x trivy.sh
 ls
 ./trivy.sh
 trivy–version

 ----------------------------------

** Install Nexus:******
  1. Install Docker
  2. Create Nexus using docker container
 To create a Docker container running Nexus 3 and exposing it on port 8081, you can
 use the following command:
 docker run-d--name nexus-p 8081:8081 sonatype/nexus3:latest
 This command does the following:
 ●-d:Detaches the container and runs it in the background.
 ●--name nexus: Specifies the name of the container as "nexus".
 ●-p 8081:8081: Mapsport 8081 on the host to port 8081 on the container, allowing
 access to Nexus through port 8081.
 ● sonatype/nexus3:latest: Specifies the Docker image to use for the container, in this
 case, the latest version of Nexus 3 from the Sonatype repository.
 After running this command, Nexus will be accessible on your host machine
 at http://IP:8081.

