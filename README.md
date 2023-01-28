# WhatsThisHTTPStatusCode
Batch script that returns the name of the HTTP code and a short description from the RFC docs. 
Look up an HTTP status code without the internet! 
(Only accepts whole numbers)

## Example:
![Example](WhatsThisHTTPCode/example.PNG)

### Note:
Server hosts might output their own error codes, independant to what's actually written in the RFC.
An example is Error 521, which is Unassigned in RFC but stands for [Web Server Down](https://support.cloudflare.com/hc/en-us/articles/115003011431-Troubleshooting-Cloudflare-5XX-errors#521error) if using CloudFlare 
