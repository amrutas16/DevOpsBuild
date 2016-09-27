#DevOps Build Milestone

###Team Members:
1. Akanksha Chandre
2. Amruta Shintre
3. Vaibhav Rajadhakshya

###Build section:
1. A digital ocean image to host and run jenkins. Make sure you have your ssh key configured to create a digital ocean droplet successfully.
2. ssh into the droplet after it is successfully created from your terminal using ssh root@ip_of_droplet
3. The instance should have certain packages installed like git, maven and jenkins. Run the following commands on the instance through the terminal:
  1. sudo apt-get install git
  2. sudo apt-get install maven
  3. wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
  4. sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
  5. sudo apt-get update
  6. sudo apt-get install jenkins
