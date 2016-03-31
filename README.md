# DataHubSystemDocker
Experimental DataHubSystem (a.k.a. DHuS) Docker image

### Scope
This report aims to dig into Docker technology and discover new ways and places 

### Dependencies
* `dhus-software-0.9.0-2-distribution.zip` you can build your own follow the instruction here: http://sentineldatahub.github.io/DataHubSystem/page/2007/05/01/How-to-Build.html
* `dhus.xml` config file
* `start.sh` config file

### Build Docker image
* `docker build -t dhus .`

### Run it
* `docker run --name dhus -d -v <YOUR_MAGIC_PATH>/local_dhus:local_dhus -p 8081:8081 dhus`

## Logs and GO!
tail -f your logs with `docker logs --follow dhus`, check if some erorr appears, if not... enjoy your DHuS here `http://localhost:8081` (when Server is ready...)
