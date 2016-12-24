*DBC Challenge 9.1, Rel 0*

**What are some common HTTP status codes?**

_from https://www.globo.tech/learning-center/5-most-common-http-error-codes-explained/_

_Status codes are three-digit numbers. A 200 code is the most common and represents a successful response. The first digit defines what is known as the class of the status code. If the code starts with a 2, as in 200, that represents a successful response to the request. There are status codes that start with 1. These represent informational messages. These are rarely seen. A code of the form 3xx represents a redirection response. Typically, the browser will handle these without user interaction and get the resource from the new location instead.

Error codes come in the form of 4xx and 5xx statuses. Error codes at the 400 level mean there was a client-side error — think of something like the user typing the wrong URL in the address bar. Error codes at the 500 level mean there was a server-side error — think of something like the database server going down or perhaps running out of disk space.

404 Not Found
The most common error code you run into is a 404 error. The 404 status code means the requested resource is no longer available or, more specifically, just not found. Was it ever available there? You don’t know. You do know it isn’t available there now.

403 Forbidden
Another common client-side response status code is 403. Getting a 403 status code back from an HTTP request means access to the resource is forbidden. This is not an authentication problem; those are 401 (unauthorized) errors. One common reason for 403 errors is the server maintaining a whitelist of machines that can access that system and the user’s machine not being on it. If the client’s certificate is no longer valid (or is just plain missing), that’s another reason for a 403 error response. There typically is no recovery from these, short of trying from a different machine. Finally, there’s also the possibility of wrong permissions associated to files. Often in Linux and sometimes in Windows, a webserver will not have access to website files because of faulty permissions. This will also result in a 403 error. The server owner will need to change the file permissions to fix this.

500 Internal Server Error
Moving over to the server-side error codes, the 500 error is the catchall. When none of the other 500 error codes make sense, or if the programmer is just lazy and doesn’t identify the specific problem, a 500 status code is returned. Typically, you can retry the request attempt again and possibly get a different response. Of course, retrying attempts that involved a shopping cart that resulted in a 500 error could result in a duplicate order, so tread carefully there.

503 Service Unavailable
Like many of the 500-level error codes, the 503 (service unavailable) status code could be a temporary problem. It basically means the web server isn’t available. Why? You don’t know. Perhaps the web server just restarted and is in the middle of initialization. Perhaps it is overloaded and can’t handle any more concurrent requests. Or perhaps it is just down for maintenance. Retrying the request could work or could return another 5xx error.

504 Gateway Timeout
The final of the top five error codes is the 504 status, indicating a gateway timeout. The name says it all. A proxy server needs to communicate with a secondary web server, such as an apache server, and access to that server timed out. There could be a DNS issue, a network device might be down, or the other machine could just be overly busy and unable to process the request in a timely fashion. This can only happen in a setup where a caching or proxy server is directly serving the webpage and the actual webserver behind it is unreachable. As with the other 5xx-level errors, just retrying the request could result in a successful response._

**What is the difference between a GET request and a POST request? When might each be used?**

_HTTP POST requests supply additional data from the client (browser) to the server in the message body. In contrast, GET requests include all required data in the URL. Forms in HTML can use either method by specifying method="POST" or method="GET" (default) in the <form> element. The method specified determines how form data is submitted to the server. When the method is GET, all form data is encoded into the URL, appended to the action URL as query string parameters. With POST, form data appears within the message body of the HTTP request._

**Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**

_An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in, for example. It remembers stateful information for the stateless HTTP protocol.
Cookies are mainly used for these three purposes:

Session management (user logins, shopping carts)
Personalization (user preferences)
Tracking (analyzing user behavior)_