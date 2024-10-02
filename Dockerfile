FROM ubuntu:24.04
LABEL authors="badcure"
WORKDIR /usr/local/src/terasoup/
COPY requirements.txt ./
RUN ["apt", "update"]
RUN ["apt", "install", "nodejs", "npm", "software-properties-common", "-y"]
RUN ["npm", "install", "--global", "cdktf-cli@latest"]
RUN ["add-apt-repository", "ppa:deadsnakes/ppa", "-y"]
RUN ["apt", "update"]
RUN ["apt", "install", "python3.11",  "python3.11-distutils", "python3-pip", "-y"]
RUN ["python3.11", "-m", "pip", "install", "-r", "/usr/local/src/terasoup/requirements.txt"]
