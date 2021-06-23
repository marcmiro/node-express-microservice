# README

---

#### Software requirements
You just need to have installed docker and openssl locally. The main script is used only for Unix systems but the Docker part can be used on any system. If you use Windows, you will have to create and add the trusted certificates by yourself manually.

---

#### Instructions
This solution is created to be used with just one single command (if you meet the *Software requirements*).

You need to be on on the repository folder with your terminal. 
Before you launch the command, it's important to give execution rights to the file *launch.sh* if it hasn't (chmod +x launch.sh).
After ensure the first two things, you just have to launch: ./launch.sh

What the process will do is:
1. Create the self-signed certificate (it will demand your password).
2. Add the certificate to be trusted by the host.
3. Build the images of each part (web server and web application).
4. Mount the containers and expose them.

When the process is finished, you can launch: `curl -L "https://localhost/hello"`. If you use `HTTP`, you will be redirected to `HTTPS`.

One time you launch the script, as you are going to have the certificates installed, you just need to launch the docker-compose commands that you can find on the *launch.sh* file (one to build images without cache and the other to create the containers).

---

#### Why I chose this solution?
I chose this solution for two reasons:
1. Docker and docker-compose is a fast solution to deploy as much times as need a solution. You can test your changes doing only one command and it will build all automatically and really fast thanks to its cache.
2. If you want to deploy it in production or on a remote environment, you can easily deploy and replicate it thanks to the container solution.

---
