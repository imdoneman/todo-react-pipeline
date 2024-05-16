# Todo-react pipeline

This project focuses on constructing a robust Jenkins pipeline tailored for production use. The pipeline automates the build process for the Todo React web application. Once built, the pipeline proceeds to package the React app into a Docker image, which is then pushed to a Docker repository for easy deployment and distribution.

Here will the image of the jenkins build

## Built With

Below are the tools utilized to construct both the pipeline and the Todo React application:

here will be all the tools logo

## Getting Started

To recreate this project in your local environment, follow the steps below:

#### 1. Fork the project from the https://github.com/imdoneman/todo-react-pipeline.

#### 2. Set up a VM or cloud compute instance.

#### 3. Install Docker on the VM.

#### 4. Pull and run the Jenkins/Jenkins Docker image. You should follow the Docker command to run the Docker container:

    docker run -d -p 8080:8080 \
    -p 50000:50000 \
    -v jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(which docker):/usr/bin/docker \
    jenkins/jenkins

Disclaimer: Please note that the given command works for Linux-based distributions.

#### 5. Get inside the Docker container's bash shell using the following command:

    docker exec -it -u 0 <container_id> /bin/bash

Then, install Node.js and npm inside the container.
Get inside the Docker container's bash shell using the following command:
bash
Copy code
docker exec -it -u 0 <container_id> /bin/bash
Then, install Node.js and npm inside the container.

#### 6. Now, go to any browser and access the Jenkins web UI using localhost:8080 for a local VM or using IPv4:8080 for the cloud instance.

#### 7. After setting up Jenkins, install the following plugins: Node.js plugin.

#### 8. Create credentials for GitHub and DockerHub (Credential ID should be "dockerhub") in the Jenkins credentials section.

#### 9. Configure the Git and Node.js plugins. (Image will be provided)

#### 10. Finally, create a new job, name the job as per your choice, select the job type as Pipeline, and save.

Now that all the steps are completed, click the "Build Now" button, and the magic will happen

## Authors

- [Shani_majumdar - github](https://www.github.com/imdoneman)
- [Shani_majumdar - linkedin](www.linkedin.com/in/shani-majumder-686070132)

## License

[MIT](https://choosealicense.com/licenses/mit/)
