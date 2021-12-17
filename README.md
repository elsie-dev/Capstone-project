
# Capstone Project
In this task is a demonstration of all the skills learnt in my nanodegree program,from linting to creating pipelines,docker containers to using kubernetes clusters while working in the AWS console.


#Project steps

## Requirements
- AWS account
- A Circleci Account. In this configure
    - Add the AWS credentials as environment variables. Configure AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY,AWS_DEFAULT_REGIOn,DOCKER_USERNAME,DOCKER_PASSOWRD
- Your App to deploy

##  Project Tools
1. Circleci
2. Amazon Elastic Kubernetes Service (EKS)
3. Cloud formation(will be created thorugh the circleci pipeline)



## Steps
1. Fork my project to your Github Account
2. Add the AWS credentials as environment variables. Configure 
 
  - AWS_ACCESS_KEY_ID, 
  - AWS_SECRET_ACCESS_KEY 

  
3. Complete your Dockerfile to build the image of your app
4. Add Makefile for linting
5. Complete your  ``` .circleci/config.yml ```. Implement Build and deploy jobs with CircleCI AWS ECR and AWS EKS orbs.

    ```yml 
    orbs:
          aws-eks: circleci/aws-eks@1.1.0
          kubernetes: circleci/kubernetes@0.4.0
          aws-ecr: circleci/aws-ecr@7.2.0  
    ```
    
   
    - Then use the workflow ```aws-eks/create-cluster``` to create the cluster and all the required VPC-related resources to run Kubernetes on AWS.
    -  the ```deploy-application:``` to deploy your application
    -  Then adding the delete-application to avoid recurring charges on the aws console.
6. Push code to github and the pipeline runs automatically .
