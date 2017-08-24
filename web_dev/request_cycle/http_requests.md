#1. What are some common HTTP status codes?
404 Not Found: The requested source is no longer available or not found. Sometimes it can be
because of a typo in the URL, or a wrong domain name.
403 Forbidden: Access to the resource is forbidden. A user's machine may not have access to the system.
500 Internal Server Error: A server-side error code. It is kind of a default error code when
none of the other error codes make sense.
503 Service Unavailable: The web server isn't available. It may have just restarted and is in the middle
of initialization, or it might be overloaded, or it might be down for maintenance.

#2. What is the difference between a GET request and a POST request? When might each be used?
POST and GET are two HTTP request methods. GET requests a representation of the specified resource. 
POST submits data to be processed (e.g. from an HTML form) to the identified resource. The
data is included in the body of the request.
GET is used to retrieve data and POST is used to insert/update remote data.

#3. What is a cookie? How does it relate to HTTP requests?
An HTTP cookie is a small piece of data sent from a website and stored on the user's 
computer by the user's web browser while the user is browsing. Cookies were designed to be a
reliable mechanism for websites to remember stateful information.