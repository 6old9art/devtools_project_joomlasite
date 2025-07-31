# devtools_project_joomlasite
# Created by **Guy Goldgart** and **Or Man**

# The Assignment:
Build a website using Joomla (content management service) and backing it up with MySQL (database service).  
Use docker to run both services.  
Download both services images, putting each in a docker container, and connect them with a shared network.  
Configure the website with basic attributes and create an account for every team member + 1 super user (admin).  
Upload the course's gloossary as articles to the website.  
Back up the entire site and its content.  
Restore the complete site.  
Writing scripts to automate each major step in the project.  
Upload everything to this repository.

# Our Work:
We used a linux virtual machine the entire time.  
We created a network to connect the 2 containers.  
Then downloaded the images for MySQL and Joomla.  
Then created containers for each service.  
We checked both of them are up and running, then accessed the site at http://localhost:8080.  
Then configured the website using its installation interface.  
We added the users as described in the assignment and provided permissions to edit the website at the administrator section of the site (at http://localhost:8080/administrator).  
We each uploaded half of the course's glossary to the site.  
At this point we ran into some problems - we backed up the database which contains its content but not the site essential properties, and when we tried to restore it, it kept going back to initial configuration screen. Eventually, we figured it out and created another backup for the site essential files.  
After resolving the backing up problems we managed to successfully restore the site in its entirety.  
Finally, we cleaned the machine from anything we installed during the work.  
We then converted it into scripts which make the process almost entirely automatic to restore and backup the site again.  

# Technologies we used:
- Linux VM
- Docker
- MySQL
- Joomla
- Git

# Step by step instructions:
Enter your VM and open the command line.
clone the project to your machine using:  
git clone https://github.com/6old9art/devtools_project_joomlasite  
then go into the project directory: cd devtools_project_joomlasite  
to set up then network, images and containers, type: bash setup.sh
this essentially creates an empty Joomla site.  
To restore the existing site, type: bash restore.sh  
You can now open the browser and access the site by heading to: http://localhost:8080  
or edit the site at http://localhost:8080/administrator  
To back up changes, type: bash backup.sh
note that the backup is in the main directory, to see it type: cd ~  
(this is so the preview backup files restored don't mix up with the newly created ones).  
To clean up your machine type (make sure you are in the project's directory with cd devtools_project_joomlasite): bash cleanup.sh  
and then type: cd ~
