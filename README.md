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

 Your provided commands are correct for accessing the Nexus password stored in the
 container. Here's a breakdown of the steps:
 1.
 Get Container ID: You need to find out the ID of the Nexus container. You
 can do this by running:
 docker ps
 This command lists all running containers along with their IDs, among other
 information.
 2. Access Container's Bash Shell: Once you have the container ID, you can
 execute the docker exec command to access the container's bash shell:
 docker exec-it <container_ID> /bin/bash
 Replace <container_ID> with the actual ID of the Nexus container.
 3. Navigate to Nexus Directory: Inside the container's bash shell, navigate to the
 directory where Nexus stores its configuration:
 cd sonatype-work/nexus3
 4. ViewAdminPassword: Finally, you can view the admin password by
 displaying the contents of the admin.password file:
 cat admin.password
 5. Exit the Container Shell: Once you have retrieved the password, you can exit
 the container's bash shell:
 exit

