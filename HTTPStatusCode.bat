@ECHO off
REM Last Updated: 4/23/2020
REM Info retrieved from https://www.ietf.org/assignments/http-status-codes/http-status-codes.xml and RFC other documents
REM Any status code name that doesn't specify an RFC # is assumed to be from RFC 7231
REM Example ELSE IF statement for future status codes: "ELSE IF %id%==SomeNumber (echo. & echo %id% Name "(RFC #)" & echo. & echo "Description") ^"
set /p id= "Enter a Status Code: "

IF %id%==100 (echo. & echo %id% Continue & echo. & echo "Indicates that the initial part of a request has been received and has not yet been rejected by the server.") ^
ELSE IF %id%==101 (echo. & echo %id% Switching Protocols & echo. & echo "Indicates that the server understands and is willing to comply with the client's request for a change in the application protocol being used on this connection.") ^
ELSE IF %id%==102 (echo. & echo %id% Processing "(WebDAV; RFC 2518)" & echo. & echo "A WebDAV request may contain many sub-requests involving file operations, requiring a long time to complete the request. This code indicates that the server has received and is processing the request, but no response is available yet.[6] This prevents the client from timing out and assuming the request was lost.") ^
ELSE IF %id%==103 (echo. & echo %id% Early Hints "(RFC 8297)" & echo. & echo "Indicates to the client that the server is likely to send a final response with the header fields included in the informational response.") ^
ELSE IF %id%==200 (echo. & echo %id% OK & echo. & echo "Indicates that the request has succeeded.") ^
ELSE IF %id%==201 (echo. & echo %id% Created & echo. & echo "Indicates that the request has been fulfilled and has resulted in one or more new resources beingcreated.") ^
ELSE IF %id%==202 (echo. & echo %id% Accepted & echo. & echo "Indicates that the request has been accepted for processing, but the processing has not been completed.") ^
ELSE IF %id%==203 (echo. & echo %id% Non-Authoritative Information & echo. & echo "Indicates that the request was successful but the enclosed payload has been modified from that of the origin server's 200 (OK) response by a transforming proxy.") ^
ELSE IF %id%==204 (echo. & echo %id% No Content & echo. & echo "Indicates that the server has successfully fulfilled the request and that there is no additional content to send in the response payload body.") ^
ELSE IF %id%==205 (echo. & echo %id% Reset Content & echo. & echo "Indicates that the server has fulfilled the request and desires that the user agent reset the document view, which caused the request to be sent, to its original state as received from the origin server.") ^
ELSE IF %id%==206 (echo. & echo %id% Partial Content "(RFC 7233)" & echo. & echo "Indicates that the server is successfully fulfilling a range request for the target resource by transferring one or more parts of the selected representation that correspond to the satisfiable ranges found in the request's Range header field.") ^
ELSE IF %id%==207 (echo. & echo %id% Multi-Status "(WebDAV; RFC 4918)" & echo. & echo "An extension to the HTTP/1.1 protocol that allows clients to perform remote Web content authoring operations. This extension provides a coherent set of methods, headers, request entity body formats, and response entity body formats.") ^
ELSE IF %id%==208 (echo. & echo %id% Already Reported "(WebDAV; RFC 5842)" & echo. & echo "Extends the WebDAV Distributed Authoring Protocol (Multi-Status; RFC4918) to enable clients to create new access paths to existing resources.") ^
ELSE IF %id%==226 (echo. & echo %id% IM Used "(RFC 3229)" & echo. & echo "A set of compatible extensions to HTTP/1.1 that allow clients and servers to use delta encoding (cache) with minimal overhead.") ^
ELSE IF %id%==300 (echo. & echo %id% Multiple Choices & echo. & echo "Indicates that the target resource has more than one representation, each with its own more specific identifier, and information about the alternatives is being provided so that the user (or user agent) can select a preferred representation by redirecting its request to one or more of those identifiers.") ^
ELSE IF %id%==301 (echo. & echo %id% Moved Permanently & echo. & echo "Indicates that the target resource has been assigned a new permanent URI and any future references to this resource ought to use one of the enclosed URIs.") ^
ELSE IF %id%==302 (echo. & echo %id% Found & echo. & echo "Indicates that the target resource resides temporarily under a different URI.") ^
ELSE IF %id%==303 (echo. & echo %id% See Other & echo. & echo "Indicates that the server is redirecting the user agent to a different resource, as indicated by a URI in the Location header field, which is intended to provide an indirect response to the original request.") ^
ELSE IF %id%==304 (echo. & echo %id% Not Modified "(RFC 7232)" & echo. & echo "Indicates that a conditional GET or HEAD request has been received and would have resulted in a 200 (OK) response if it were not for the fact that the condition evaluated to false. (The client already has what they requested)") ^
ELSE IF %id%==305 (echo. & echo %id% Use Proxy & echo. & echo "[DEPRECATED] The requested resource MUST be accessed through the proxy given by the Location field.") ^
ELSE IF %id%==306 (echo. & echo %id% Unused & echo. & echo "Unused/Reserved status code.") ^
ELSE IF %id%==307 (echo. & echo %id% Temporary Redirect & echo. & echo "Indicates that the target resource resides temporarily under a different URI and the user agent MUST NOT change the request method if it performs an automatic redirection to that URI.") ^
ELSE IF %id%==308 (echo. & echo %id% Permanent Redirect & echo. & echo "Indicates that the target resource has been assigned a new permanent URI and any future references to this resource ought to use one of the enclosed URIs.") ^
ELSE IF %id%==400 (echo. & echo %id% Bad Request & echo. & echo "Indicates that the server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing).") ^
ELSE IF %id%==401 (echo. & echo %id% Unauthorized "(RFC 7235)" & echo. & echo "Indicates that the request has not been applied because it lacks valid authentication credentials for the target resource.") ^
ELSE IF %id%==402 (echo. & echo %id% Payment Required & echo. & echo "Reserved for future use.") ^
ELSE IF %id%==403 (echo. & echo %id% Forbidden & echo. & echo "Indicates that the server understood the request but refuses to authorize it.") ^
ELSE IF %id%==404 (echo. & echo %id% Not Found & echo. & echo "Indicates that the origin server did not find a current representation for the target resource or is not willing to disclose that one exists.") ^
ELSE IF %id%==405 (echo. & echo %id% Method Not Allowed & echo. & echo "Indicates that the method received in the request-line is known by the origin server but not supported by the target resource.") ^
ELSE IF %id%==406 (echo. & echo %id% Not Acceptable & echo. & echo "Indicates that the target resource does not have a current representation that would be acceptable to the user agent, according to the proactive negotiation header fields received in the request, and the server is unwilling to supply a default representation.") ^
ELSE IF %id%==407 (echo. & echo %id% Proxy Authentication Required "(RFC 7235)" & echo. & echo "Indicates that the client needs to authenticate itself in order to use a proxy.") ^
ELSE IF %id%==408 (echo. & echo %id% Request Timeout & echo. & echo "Indicates that the server did not receive a complete request message within the time that it was prepared to wait.") ^
ELSE IF %id%==409 (echo. & echo %id% Conflict & echo. & echo "Indicates that the request could not be completed due to a conflict with the current state of the target resource.") ^
ELSE IF %id%==410 (echo. & echo %id% Gone & echo. & echo "Indicates that access to the target resource is no longer available at the origin server and that this condition is likely to be permanent.") ^
ELSE IF %id%==411 (echo. & echo %id% Length Required & echo. & echo "Indicates that the server refuses to accept the request without a defined Content-Length.") ^
ELSE IF %id%==412 (echo. & echo %id% Precondition Failed "(RFC 7232)" & echo. & echo "Indicates that one or more conditions given in the request header fields evaluated to false when tested on the server.") ^
ELSE IF %id%==413 (echo. & echo %id% Payload Too Large & echo. & echo "Indicates that the server is refusing to process a request because the request payload is larger than the server is willing or able to process.") ^
ELSE IF %id%==414 (echo. & echo %id% URI Too Long & echo. & echo "Indicates that the server is refusing to service the request because the request-target (Section 5.3 of RFC 7230) is longer than the server is willing to interpret.") ^
ELSE IF %id%==415 (echo. & echo %id% Unsupported Media Type & echo. & echo "Indicates that the origin server is refusing to service the request because the payload is in a format not supported by this method on the target resource.") ^
ELSE IF %id%==416 (echo. & echo %id% Range Not Satisfiable "(RFC 7233)" & echo. & echo "Indicates that none of the ranges in the request's Range header field overlap the current extent of the selected resource or that the set of ranges requested has been rejected due to invalid ranges or an excessive request of small or overlapping ranges.") ^
ELSE IF %id%==417 (echo. & echo %id% Expectation Failed & echo. & echo "Indicates that the expectation given in the request's Expect header field could not be met by at least one of the inbound servers.") ^
ELSE IF %id%==421 (echo. & echo %id% Misdirected Request "(RFC 7540)" & echo. & echo "Indicates that the request was directed at a server that is not able to produce a response.") ^
ELSE IF %id%==422 (echo. & echo %id% Unprocessable Entity "(RFC 4918)" & echo. & echo "Indicates that the server refuses to accept the request without a defined Content-Length.") ^
ELSE IF %id%==423 (echo. & echo %id% Locked "(RFC 4918)" & echo. & echo "Indicates that the source or destination resource of a method is locked.") ^
ELSE IF %id%==424 (echo. & echo %id% Failed Dependency "(RFC 4918)" & echo. & echo "Indicates that the method could not be performed on the resource because the requested action depended on another action and that action failed.") ^
ELSE IF %id%==425 (echo. & echo %id% Too Early "(RFC 8470)" & echo. & echo "Indicates that the server is unwilling to risk processing a request that might be replayed.") ^
ELSE IF %id%==426 (echo. & echo %id% Upgrade Required & echo. & echo "Indicates that the server refuses to perform the request using the current protocol but might be willing to do so after the client upgrades to a different protocol.") ^
ELSE IF %id%==428 (echo. & echo %id% Precondition Required "(RFC 6585)" & echo. & echo "Indicates that the origin server requires the request to be conditional.") ^
ELSE IF %id%==429 (echo. & echo %id% Too Many Requests "(RFC 6585)" & echo. & echo "Indicates that the user has sent too manyrequests in a given amount of time (rate limiting).") ^
ELSE IF %id%==431 (echo. & echo %id% Request Header Fields Too Large "(RFC 6585)" & echo. & echo "Indicates that the server is unwilling to process the request because its header fields are too large.") ^
ELSE IF %id%==451 (echo. & echo %id% Unavailable For Legal Reasons "(RFC 7725)" & echo. & echo "Indicates that the server is denying access to the resource as a consequence of a legal demand.") ^
ELSE IF %id%==500 (echo. & echo %id% Interal Server Error & echo. & echo "Indicates that the server encountered an unexpected condition that prevented it from fulfilling the request.") ^
ELSE IF %id%==501 (echo. & echo %id% Not Implemented & echo. & echo "Indicates that the server does not support the functionality required to fulfill the request.") ^
ELSE IF %id%==502 (echo. & echo %id% Bad Gateway & echo. & echo "Indicates that the server, while acting as a gateway or proxy, received an invalid response from an inbound server it accessed while attempting to fulfill the request.") ^
ELSE IF %id%==503 (echo. & echo %id% Service Unavailable & echo. & echo "Indicates that the server is currently unable to handle the request due to a temporary overload or scheduled maintenance, which will likely be alleviated after some delay.") ^
ELSE IF %id%==504 (echo. & echo %id% Gateway Timeout & echo. & echo "Indicates that the server, while acting as a gateway or proxy, did not receive a timely response from an upstream server it needed to access in order to complete the request.") ^
ELSE IF %id%==505 (echo. & echo %id% HTTP Version Not Supported & echo. & echo "Indicates that the server does not support, or refuses to support, the major version of HTTP that was used in the request message.") ^
ELSE IF %id%==506 (echo. & echo %id% Variant Also Negotiates "(RFC 2295)" & echo. & echo "Indicates that the server has an internal configuration error: the chosen variant resource is configured to engage in transparent content negotiation itself, and is therefore not a proper end point in the negotiation process.") ^
ELSE IF %id%==507 (echo. & echo %id% Insufficient Storage "(RFC 4918)" & echo. & echo "Indicates that a method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request.") ^
ELSE IF %id%==508 (echo. & echo %id% Loop Detected "(RFC 5842)" & echo. & echo "Indicates that the server terminated an operation because it encountered an infinite loop while processing a request with Depth: infinity.") ^
ELSE IF %id%==510 (echo. & echo %id% Not Extended "(RFC 2774)" & echo. & echo "Indicates that the policy for accessing the resource has not been met in the request.") ^
ELSE IF %id%==511 (echo. & echo %id% Network Authentication Required "(RFC 6585)" & echo. & echo "Indicates that the client needs to authenticate to gain network access.") ^
ELSE (echo. & echo Unknown or Unassigned Error Code %id%)

echo. & pause