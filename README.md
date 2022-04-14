# sample-node-app
We have three stages in our gitlab-ci.yml file:

The build stage will build our image based on the Dockerfile and scan it with trivy (trivy is installed on our runner) and if it has no critical issues it wil
l push it to our private registry and delete the local image.

The test stage will test our app with the test written in src/spec.js

We have two jobs in deploy stage both will deploy our app but the deployment-to-stage will run only if the branch name is stage and will deploy it to stage environment and deployment-to-prod will only run if the branch name is main and will deploy it in prod environment
