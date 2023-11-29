# https://hub.docker.com/r/atlassian/jira-software/
docker pull atlassian/jira-software
docker run -d --name jira-container -p 8080:8080 atlassian/jira-software