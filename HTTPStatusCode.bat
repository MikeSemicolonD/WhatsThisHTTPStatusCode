@ECHO off
REM Last Updated: 6/22/2022
REM Info retrieved from https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml#http-status-codes-1 and their assigned RFC documents
REM Any status code names that don't specify an RFC # in it's output is assumed to be from RFC 2068 (The original HTTP Specifications)

SETLOCAL enabledelayedexpansion
set /p id= "Enter a Status Code: "
set LF=^


set RFC[100]=Continue!LF!!LF!Indicates that the initial part of a request has been received and has not yet been rejected by the server.
set RFC[101]=Switching Protocols!LF!!LF!Indicates that the server understands and is willing to comply with the client's request for a change in the application protocol being used on this connection.
set RFC[102]=Processing "(WebDAV; RFC 2518)"!LF!!LF!A WebDAV request may contain many sub-requests involving file operations, requiring a long time to complete the request. This code indicates that the server has received and is processing the request, but no response is available yet. This prevents the client from timing out and assuming the request was lost.
set RFC[103]=Early Hints "(RFC 8297)"!LF!!LF!Indicates to the client that the server is likely to send a final response with the header fields included in the informational response.
set RFC[200]=OK!LF!!LF!Indicates that the request has succeeded.
set RFC[201]=Created!LF!!LF!Indicates that the request has been fulfilled and has resulted in one or more new resources beingcreated.
set RFC[202]=Accepted!LF!!LF!Indicates that the request has been accepted for processing, but the processing has not been completed.
set RFC[203]=Non-Authoritative Information!LF!!LF!Indicates that the request was successful but the enclosed payload has been modified from that of the origin server's 200 (OK) response by a transforming proxy.
set RFC[204]=No Content!LF!!LF!Indicates that the server has successfully fulfilled the request and that there is no additional content to send in the response payload body.
set RFC[205]=Reset Content!LF!!LF!Indicates that the server has fulfilled the request and desires that the user agent reset the document view, which caused the request to be sent, to its original state as received from the origin server.
set RFC[206]=Partial Content!LF!!LF!Indicates that the server is successfully fulfilling a range request for the target resource by transferring one or more parts of the selected representation that correspond to the satisfiable ranges found in the request's Range header field.
set RFC[207]=Multi-Status "(WebDAV; RFC 4918)"!LF!!LF!An extension to the HTTP/1.1 protocol that allows clients to perform remote Web content authoring operations. This extension provides a coherent set of methods, headers, request entity body formats, and response entity body formats.
set RFC[208]=Already Reported "(WebDAV; RFC 5842)"!LF!!LF!Extends the WebDAV Distributed Authoring Protocol (Multi-Status; RFC4918) to enable clients to create new access paths to existing resources.
set RFC[226]=IM Used "(RFC 3229)"!LF!!LF!A set of compatible extensions to HTTP/1.1 that allow clients and servers to use delta encoding (cache) with minimal overhead.
set RFC[300]=Multiple Choices!LF!!LF!Indicates that the target resource has more than one representation, each with its own more specific identifier, and information about the alternatives is being provided so that the user (or user agent) can select a preferred representation by redirecting its request to one or more of those identifiers.
set RFC[301]=Moved Permanently!LF!!LF!Indicates that the target resource has been assigned a new permanent URI and any future references to this resource ought to use one of the enclosed URIs.
set RFC[302]=Found!LF!!LF!Indicates that the target resource resides temporarily under a different URI.
set RFC[303]=See Other!LF!!LF!Indicates that the server is redirecting the user agent to a different resource, as indicated by a URI in the Location header field, which is intended to provide an indirect response to the original request.
set RFC[304]=Not Modified"!LF!!LF!Indicates that a conditional GET or HEAD request has been received and would have resulted in a 200 (OK) response if it were not for the fact that the condition evaluated to false. (The client already has what they requested)
set RFC[305]=Use Proxy!LF!!LF![DEPRECATED] The requested resource MUST be accessed through the proxy given by the Location field.
set RFC[307]=Temporary Redirect!LF!!LF!Indicates that the target resource resides temporarily under a different URI and the user agent MUST NOT change the request method if it performs an automatic redirection to that URI.
set RFC[308]=Permanent Redirect!LF!!LF!Indicates that the target resource has been assigned a new permanent URI and any future references to this resource ought to use one of the enclosed URIs.
set RFC[400]=Bad Request!LF!!LF!Indicates that the server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing).
set RFC[401]=Unauthorized "(RFC 7235)"!LF!!LF!Indicates that the request has not been applied because it lacks valid authentication credentials for the target resource.
set RFC[402]=Payment Required!LF!!LF!Reserved for future use.
set RFC[403]=Forbidden!LF!!LF!Indicates that the server understood the request but refuses to authorize it.
set RFC[404]=Not Found!LF!!LF!Indicates that the origin server did not find a current representation for the target resource or is not willing to disclose that one exists.
set RFC[405]=Method Not Allowed!LF!!LF!Indicates that the method received in the request-line is known by the origin server but not supported by the target resource.
set RFC[406]=Not Acceptable!LF!!LF!Indicates that the target resource does not have a current representation that would be acceptable to the user agent, according to the proactive negotiation header fields received in the request, and the server is unwilling to supply a default representation.
set RFC[407]=Proxy Authentication Required "(RFC 7235)"!LF!!LF!Indicates that the client needs to authenticate itself in order to use a proxy.
set RFC[408]=Request Timeout!LF!!LF!Indicates that the server did not receive a complete request message within the time that it was prepared to wait.
set RFC[409]=Conflict!LF!!LF!Indicates that the request could not be completed due to a conflict with the current state of the target resource.
set RFC[410]=Gone!LF!!LF!Indicates that access to the target resource is no longer available at the origin server and that this condition is likely to be permanent.
set RFC[411]=Length Required!LF!!LF!Indicates that the server refuses to accept the request without a defined Content-Length.
set RFC[412]=Precondition Failed "(RFC 7232)"!LF!!LF!Indicates that one or more conditions given in the request header fields evaluated to false when tested on the server.
set RFC[413]=Payload Too Large!LF!!LF!Indicates that the server is refusing to process a request because the request payload is larger than the server is willing or able to process.
set RFC[414]=URI Too Long!LF!!LF!Indicates that the server is refusing to service the request because the request-target (Section 5.3 of RFC 7230) is longer than the server is willing to interpret.
set RFC[415]=Unsupported Media Type!LF!!LF!Indicates that the origin server is refusing to service the request because the payload is in a format not supported by this method on the target resource.
set RFC[416]=Range Not Satisfiable "(RFC 7233)"!LF!!LF!Indicates that none of the ranges in the request's Range header field overlap the current extent of the selected resource or that the set of ranges requested has been rejected due to invalid ranges or an excessive request of small or overlapping ranges.
set RFC[417]=Expectation Failed "(RFC 2616)"!LF!!LF!Indicates that the expectation given in the request's Expect header field could not be met by at least one of the inbound servers.
set RFC[421]=Misdirected Request "(RFC 7540)"!LF!!LF!Indicates that the request was directed at a server that is not able to produce a response.
set RFC[422]=Unprocessable Entity "(RFC 4918)"!LF!!LF!Indicates that the server refuses to accept the request without a defined Content-Length.
set RFC[423]=Locked "(RFC 4918)"!LF!!LF!Indicates that the source or destination resource of a method is locked.
set RFC[424]=Failed Dependency "(RFC 4918)"!LF!!LF!Indicates that the method could not be performed on the resource because the requested action depended on another action and that action failed.
set RFC[425]=Too Early "(RFC 8470)"!LF!!LF!Indicates that the server is unwilling to risk processing a request that might be replayed.
set RFC[426]=Upgrade Required "(RFC 2817)"!LF!!LF!Indicates that the server refuses to perform the request using the current protocol but might be willing to do so after the client upgrades to a different protocol.
set RFC[428]=Precondition Required "(RFC 6585)"!LF!!LF!Indicates that the origin server requires the request to be conditional.
set RFC[429]=Too Many Requests "(RFC 6585)"!LF!!LF!Indicates that the user has sent too many requests in a given amount of time (rate limiting).
set RFC[431]=Request Header Fields Too Large "(RFC 6585)"!LF!!LF!Indicates that the server is unwilling to process the request because its header fields are too large.
set RFC[451]=Unavailable For Legal Reasons "(RFC 7725)"!LF!!LF!Indicates that the server is denying access to the resource as a consequence of a legal demand.
set RFC[500]=Interal Server Error !LF!!LF!Indicates that the server encountered an unexpected condition that prevented it from fulfilling the request.
set RFC[501]=Not Implemented!LF!!LF!Indicates that the server does not support the functionality required to fulfill the request.
set RFC[502]=Bad Gateway!LF!!LF!Indicates that the server, while acting as a gateway or proxy, received an invalid response from an inbound server it accessed while attempting to fulfill the request.
set RFC[503]=Service Unavailable!LF!!LF!Indicates that the server is currently unable to handle the request due to a temporary overload or scheduled maintenance, which will likely be alleviated after some delay.
set RFC[504]=Gateway Timeout!LF!!LF!Indicates that the server, while acting as a gateway or proxy, did not receive a timely response from an upstream server it needed to access in order to complete the request.
set RFC[505]=HTTP Version Not Supported!LF!!LF!Indicates that the server does not support, or refuses to support, the major version of HTTP that was used in the request message.
set RFC[506]=Variant Also Negotiates "(RFC 2295)"!LF!!LF!Indicates that the server has an internal configuration error: the chosen variant resource is configured to engage in transparent content negotiation itself, and is therefore not a proper end point in the negotiation process.
set RFC[507]=Insufficient Storage "(RFC 4918)"!LF!!LF!Indicates that a method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request.
set RFC[508]=Loop Detected "(RFC 5842)"!LF!!LF!Indicates that the server terminated an operation because it encountered an infinite loop while processing a request with Depth: infinity.
set RFC[510]=Not Extended "(RFC 2774)"!LF!!LF!Indicates that the policy for accessing the resource has not been met in the request.
set RFC[511]=Network Authentication Required "(RFC 6585)"!LF!!LF!Indicates that the client needs to authenticate to gain network access.

set result=!RFC[%id%]!

IF [!result!] EQU [] (echo !LF! Unknown or Unassigned Error Code: %id% !LF! & pause) ELSE (echo !LF! !result! !LF! & pause)