# Load Balancing Example App
Nginx, Docker example of load balancing.

## Start Project
Simply run `docker-compose up` command in the root folder of the project.

## Nginx localhost url
After app is started use [http://localhost:8080](http://localhost:8080) link to check it.

## Test Script
To test different nginx configurations, you can use script `tests/parallel_requests.sh`.
It runs 30 parallel requests to nginx host (localhost:8080) and counts responses from each server,
so you can see how load balancing algorithms balance these requests. 

After you change configuration, nginx should be restarted.
Run next command for nginx container `docker exec -d nginx-load-balancer service nginx restart` to apply updates.
No need to rebuild image or start new container.
