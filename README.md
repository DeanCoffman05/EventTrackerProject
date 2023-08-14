Description
This is the beginning stages of a web based program to assist photographers of all levels in finding fun and exciting locations to take spectacular photos! Photo Spots will include names, locations, and descriptions of potential photography sites. This software is now deployed to an AWS EC2 web server! You can view the results at http://3.13.142.36:8080/ShutterSpot/


Technologies
Java, Sprint Boot JPA, REST API, Eclipse STS, Sublime, Git, Postman, MySql

REST Endpoints
| HTTP Verb | URI                      | Request Body | Response Body |
|-----------|--------------------------|--------------|---------------|
| GET       | `/api/shutterspot`          |              | List of photo locations|
| GET       | `/api/shutterspot/{spotId}` |              | Single location by location ID | 
| POST      | `/api/shutterspot`          | Representation of a new spot| Created spot |
| PUT       | `/api/shutterspot/{spotId}` | Representation of a new version of a spot | Updated spot|
| DELETE    | `/api/shutterspot/{spotId}` |              |                | 


Things Learned
This project helped solidify the concepts of Spring Framework and how services, controllers, and repositories. The testing process with postman was a new experience and very easy and valuable.
