# DevOps-task
DevOps task by askcharlie

# Setup.sh
This script will check weather vagrant with version >=1.6 is installed or not. If yes, then the script will perform vagrant up operation. 

# Check containers status
If the vagrant command from setup.sh will complete successfully, one can check the status of nginx and redis container. 
eg. curl -L http://192.168.100.101:80  should show nginx welcone page. 

# Initialize Redis
below command will help in initializing redis from file data.txt

1. vagrant scp data.txt <Host-VM-ID>:/home/vagrant
e.g. vagrant scp data.txt c261fa6:/home/vagrant

2. docker ps | grep redis | awk '{print $1}'

3. docker cp data.txt <output-of-above-command>:/data/data.txt

4. docker exec <output-of-2nd-command> sh -c 'cat /data/data.txt | redis-cli --pipe'
