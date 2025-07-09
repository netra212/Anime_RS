FROM jenkins/jenkins:lts

# Switch to root to install docker
USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    curl \
    gnupg \
    lsb-release \
    ca-certificates \
    apt-transport-https \
    software-properties-common

# Install Docker using Docker's convenience script
RUN curl -fsSL https://get.docker.com | sh

# Add Jenkins user to Docker group
RUN usermod -aG docker jenkins

# Switch back to Jenkins user
USER jenkins
