#DevOps Build Milestone

###Team Members:
1. Akanksha Chandre
2. Amruta Shintre
3. Vaibhav Rajadhakshya

###Build section:
####Setup:
1. Create a digital ocean image to host and run jenkins. Make sure you have your ssh key configured to create a digital ocean droplet successfully.
2. ssh into the droplet after it is successfully created from your terminal using ssh root@ip_of_droplet
3. The instance should have certain packages installed like git, maven and jenkins. Run the following commands on the instance through the terminal:
  1. sudo apt-get install git
  2. sudo apt-get install maven
  3. wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
  4. sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
  5. sudo apt-get update
  6. sudo apt-get install jenkins
4. To make sure jenkins has installed successfully, open your browser and enter http://ip_of_droplet:8080. You can now login as an admin or create your own user.
5. Go to configure system and click on manage plugins and install the suggested plugins.

This completes the setup required.

####Process:
Triggering a build after a change is pushed to the git repository:<br>
<hr>
#####Git setup
To do this using a 'webhook' go to the settings tab of your git repository and choose hooks and services.
Configure the hook to have the payload url point to the digital ocean instance.<br> 
See [screenshot]().<br>
Also add the integration service for Jenkins and configure the url to point to the jenkins server running on digital ocean instance.<br> See [screenshot]().<br>

#####Jenkins setup
Create a new Jenkins job and configure its source management as github. Enter your repository url and choose the appropriate branch name in the configuration.

Now do a 'git push' and see the new job running on Jenkins.





