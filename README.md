#DevOps Build Milestone

###Team Members:
1. Akanksha Chandre achand10
2. Amruta Shintre ashintr
3. Vaibhav Rajadhyaksha vrajadh

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
<b>Triggering a build after a change is pushed to the git repository:</b><br>
<hr>
#####Git setup:
To do this using a 'webhook' go to the settings tab of your git repository and choose hooks and services.
Configure the hook to have the payload url point to the digital ocean instance.<br> 
See [screenshot]().<br>
Also add the integration service for Jenkins and configure the url to point to the jenkins server running on digital ocean instance.<br> See [screenshot]().<br>

#####Jenkins setup:
Create a new Jenkins job and configure its source management as github.
Enter your repository url and choose the appropriate branch name in the configuration.<br>
See [screenshot](https://github.com/amrutas16/DevOpsBuild/blob/master/sourcecodemgmt.png)

Now do a 'git push' and see the new job running on Jenkins.
<br>
<br>
<b>Ability to execute a build job via script or build manager that ensures clean build:</b><br>
<hr>
Make sure you have pom.xml in your git repo.
#####Jenkins setup:
Configure an existing job on jenkins. Go to the build section and select the option 'Build from maven targets'.<br>
See [screenshot](https://github.com/amrutas16/DevOpsBuild/blob/master/maven.png) to set up maven goals and build target.

Now do a 'git push' and see the new job building your repository.
Check the console output to see if the build is a SUCCESS or FAILURE.
<br>
<br>
<b> Ability to determine failure or success of a build job, and as a result trigger an external event:</b><br>
<hr>
#####Jenkins setup:
Configure the system to enable email notifications. Go to Manage Jenkins --> Configure System --> Email Notification and do the setup as seen here [screenshot](https://github.com/amrutas16/DevOpsBuild/blob/master/configureemail.png)

Configure an existing job on jenkins. Go to the post build section and enter the appropriate email address.
<br>
<br>
<b> Ability to have multiple jobs corresponding to multiple branches in a repository:</b><br>
<hr>
#####Jenkins SetUp:
Create another job and configure it to have another branch of the same repository as used in step 1.

#####Git:
Check out the different branch and make changes to the source file and add,commit and push to see the job running on Jenkins.

###Check out the Screencast here:
[Screencast]()




