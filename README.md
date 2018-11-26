# cisco_acl_web_docker
docker image for Cisco ACL web analyser

Clone repo
docker build --rm -t --no-cache cisco_acl_web ./
docker run -d -p 4567:4567 -it --rm --name cisco_acl_web cisco_acl_web:latest
