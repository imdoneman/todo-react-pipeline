# Todo-react pipeline

This project focuses on constructing a robust Jenkins pipeline tailored for production use. The pipeline automates the build process for the Todo React web application. Once built, the pipeline proceeds to package the React app into a Docker image, which is then pushed to a Docker repository for easy deployment and distribution.

![todo-react diagram](https://github.com/imdoneman/todo-react-pipeline/assets/37260737/a8446465-87df-44b6-a48e-7bcce67df719)


## Built With

Below are the tools utilized to construct both the pipeline and the Todo React application:

<img src="https://github.com/imdoneman/todo-react-pipeline/assets/37260737/bb2c2379-dff4-4259-a10e-de23e33b0bab" width="200" height="200"><br>
<img src="https://github.com/imdoneman/todo-react-pipeline/assets/37260737/a1a0f642-949c-4772-b4e5-bbd7172bd36a" width="200" height="200"><br>
<img src="https://github.com/imdoneman/todo-react-pipeline/assets/37260737/3907ca05-47cc-4926-9a53-fd929e61016a" width="200" height="200"><br>
<img src="https://github.com/imdoneman/todo-react-pipeline/assets/37260737/6577c752-05af-4ef8-8a2c-41fddfa4707b" width="200" height="200"><br>
<img src="https://github.com/imdoneman/todo-react-pipeline/assets/37260737/7bdeca34-a5c8-463a-b211-113a4480f7c1" width="200" height="200">


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

#### 6. Now, go to any browser and access the Jenkins web UI using localhost:8080 for a local VM or using IPv4:8080 for the cloud instance.

#### 7. After setting up Jenkins, install the following plugins: Node.js plugin.

#### 8. Create credentials for GitHub and DockerHub (Credential ID should be "dockerhub") in the Jenkins credentials section.

#### 9. Configure the Git and Node.js plugins.

#### 10. Finally, create a new job, name the job as per your choice, select the job type as Pipeline, and save.

Now that all the steps are completed, click the "Build Now" button, and the magic will happen

## Authors

- [Shani_majumdar - github](https://www.github.com/imdoneman)
- [Shani_majumdar - linkedin](www.linkedin.com/in/shani-majumder-686070132)

## License

[MIT](https://choosealicense.com/licenses/mit/)
