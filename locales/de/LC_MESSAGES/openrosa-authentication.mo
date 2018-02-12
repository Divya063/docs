��    C      4              L  Z   M  �   �  6   H  &     ]  �  /     �   4    
	  �   
     �
            O   /  �     y   1     �    �  "   �  )   �  -   %    S  >   �  F     )   Y  �   �  �   /  &  �     �     �      �   "  �   �  )   �  z   �  -   Y  ?   �     �  F   �       6     "   V     y     �  	   �  �   �  �   �  �         �     z   �  �       �  n  �  l   T  �   �  }   Z      �   A  �   /   ."  �   ^"  g   �"  L   T#  Q   �#  �   �#  o   �$  l   '%  Q  �%  Z   �&  �   A'  6   �'  &   (  ]  ?(  /   �*  �   �*    �+  �   �,     �-     �-     �-  O   �-  �   .  y   �.     D/    a/  "   q0  )   �0  -   �0    �0  >   l2  F   �2  )   �2  �   3  �   �3  &  b4     �5     �5    �5  �   �6  �   U7  )   M8  z   w8  -   �8  ?    9     `9  F   i9     �9  6   �9  "   �9     :     :  	   $:  �   .:  �   ;  �   �;    �<  �   �=  z   7>  �   �>    {?  n  ~@  l   �A  �   ZB  }   �B     qC  A  �C  /   �D  �   �D  g   �E  L   �E  Q   :F  �   �F  o   PG  l   �G   (the above shows that when qop is not specified, the simpler RFC2069 standard is followed) A client may already have the required user name and password without needing to prompt the user; for example, if they have previously been stored by a client. A typical transaction consists of the following steps. All HTTP interactions MUST be HTTP 1.1 Any communication over HTTP (vs. HTTPS) can be observed by others and is susceptible to man-in-the-middle attacks (where a malicious intermediary inserts itself between the client and the server the client intended to contact). As a consequence, if communication is over HTTP, clients may be submitting their form data to a malicious intermediary. That intermediary will see the full contents of the form submission. Additionally, the intermediary may never forward the submission to the intended server --- the client can never be certain that the submitted data has been recorded on the intended server. Any server interactions MAY be unauthenticated. Anyone with a network sniffer could read this value, decompress it, and obtain the user name and password. Hence, it is critical that this information only be transmitted over HTTPS or some other secure transport. Assuming the username and password are valid,  the server accepts the authentication and the page is returned. If the user name is invalid and/or the password is incorrect, the server might return the `401` response code and the client would prompt the user again. At this point, the client will present the authentication realm (typically a description of the computer or system being accessed) to the user and prompt for a user name and password. The user may decide to cancel at this point. Authentication Authentication API Basic Authentication Basic Authentication MUST NOT be performed over a non-secure (HTTP) connection. Because client communications are often through unsecured hotspots, it is recommended that HTTPS (with the authentication of server certificates) be used for all communications. Clients MUST NOT include authentication credentials in the URL to the server. That is, this syntax is strictly forbidden: Data Security Considerations Device-and-server interactions for which the server requires authentication MUST implement either Basic authentication or the OpenRosa Restricted Digest authentication scheme as detailed below. The server or device MAY additionally implement other authentication schemes. Digest Authentication Calculations Digest Authentication Example Interaction Digest Authentication Security Considerations Digest Authentication is based upon the MD5 hash algorithm which is now considered too weak for mainstream cryptographic uses. Digest Authentication remains viable only when the cnonce and nonce values are random and reasonably long. The use of longer random strings (e.g., random UUIDs have 126 bits of randomness) is critical for the continued use of this authentication mechanism. Even with HTTPS, sending this is not a highly secure practice. Even with the more secure Digest Authentication, HTTPS is recommended. Example calculation of response using MD5 For Basic Authentication, the "response" value is simply a base-64 compression of the user name concatenated with ":" and the plain-text password, as specified in RFC2617. For Digest Authentication, the "response" value is calculated in three steps, as follows. Where values are combined, they are delimited by colon symbols. HTTPS requires that the server be configured with an SSL certificate issued by a signing authority. Man-in-the-middle attacks are possible over HTTPS if clients do not authenticate the server's SSL certificate (or, less commonly, if the client device or signing authority has been compromised). Implementation No authentication Non-device (for example, browser) interactions for which the server requires authentication are NOT required to support Basic or the OpenRosa Restricted Digest authentication scheme. That is, they are allowed to only support Form-based or some other authentication scheme. Once a user name and password have been supplied, the client re-sends the same request but adds an authentication header that includes the response code. Once the client is aware that basic authentication is required, it SHOULD proactively supply the basic authentication credentials on every secure request to the server, rather than wait for the server to reject the request with a ``401`` response. OpenRosa Restricted Digest Authentication OpenRosa compliant client devices MUST authenticate server certificates when establishing HTTPS channels to those servers. OpenRosa compliant devices MUST support both: OpenRosa compliant servers MUST support at least one of either: Overview RFC 2617 (HTTP Authentication: Basic and Digest Access Authentication) RFC2069 Request (username "Mufasa", password "Circle Of Life") Request with username and password Request: Response Response: Servers MUST conform to RFC2617 for returning one or more authentication schemes in their ``401`` challenge. These define the authentication interactions that the server is willing to accept from the client (for example: Basic, Digest) Servers which implement the Authorization API should follow the specifications provided below in order to be compliant with OpenRosa standards. The Digest Authentication response value is thus sent in such a way that an adversary can extract the user name from the response, but cannot extract the password from the response. It can therefore be sent over an unsecured channel (for example, HTTP ). The MD5 hash of the combined HA1 result, server nonce (nonce), request counter (nc), client nonce (cnonce), quality of protection code (qop) and HA2 result is calculated. The result, the user name and the cnonce are the "response" value provided by the client. The MD5 hash of the combined method and digest URI is calculated, e.g. of "GET" and "/dir/index.html". The result is referred to as HA2. The MD5 hash of the combined user name, authentication realm and password is calculated. The result is referred to as HA1. The client asks for a resource that requires authentication but does not provide a user name and password. Typically this is because the user simply entered the address or followed a link to the page. The device MUST make every effort to proactively supply an ``Authentication`` header line if the requested URI falls within the list of domain URIs covered by a previous authentication interaction. This is to minimize the number of authentication challenges. The server responds with the 401 response code, either requesting Digest Authentication and providing the authentication realm and a randomly-generated, single-use value called a nonce, or requesting Basic Authentication (in which case the server should also redirect and negotiate TLS channel security (https) if the client is not already communicating over https). This API provides a standardized means with which OpenRosa clients are authenticated with compliant servers. This is the `Digest Access Authentication Scheme (RFC 2617 Section 3) <https://tools.ietf.org/html/rfc2617#section-3>`_ with the following restrictions: This standard specifies the Request and Response format through which OpenRosa compliant servers authorize HTTP transactions. Typical Interaction We are following RFC2617 with additional OpenRosa compliance requirements defined in the implementation section below to ensure that the Digest Authentication implementations across devices do not compromise security and that they all implement a well-defined common subset of the RFC2617 Digest Authentication mechanism. algorithm --- server MUST omit or specify "MD5" cnonce --- device SHOULD use a string representation of at least a 48-bit random value (a random UUID has 126-bit randomness) for the cnonce. domain --- server MUST specify to help device with proactive inclusion of Authenticate: header records. opaque --- device MUST return if supplied; server MAY supply this or omit it qop --- device MUST support: omitted and "auth"; server MAY request any of these. stale --- device MUST make every effort to not prompt the user for username and password if this is TRUE but instead recompute the key with previously cached values for the username and password. the `Basic Authentication mechanism also outlined in RFC2617 <https://tools.ietf.org/html/rfc2617#section-2>`_. the subset of `RFC2617 Digest Authentication <https://tools.ietf.org/html/rfc2617#section-3>`_ defined below Project-Id-Version: Open Data Kit 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-09 19:25+0530
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 (the above shows that when qop is not specified, the simpler RFC2069 standard is followed) A client may already have the required user name and password without needing to prompt the user; for example, if they have previously been stored by a client. A typical transaction consists of the following steps. All HTTP interactions MUST be HTTP 1.1 Any communication over HTTP (vs. HTTPS) can be observed by others and is susceptible to man-in-the-middle attacks (where a malicious intermediary inserts itself between the client and the server the client intended to contact). As a consequence, if communication is over HTTP, clients may be submitting their form data to a malicious intermediary. That intermediary will see the full contents of the form submission. Additionally, the intermediary may never forward the submission to the intended server --- the client can never be certain that the submitted data has been recorded on the intended server. Any server interactions MAY be unauthenticated. Anyone with a network sniffer could read this value, decompress it, and obtain the user name and password. Hence, it is critical that this information only be transmitted over HTTPS or some other secure transport. Assuming the username and password are valid,  the server accepts the authentication and the page is returned. If the user name is invalid and/or the password is incorrect, the server might return the `401` response code and the client would prompt the user again. At this point, the client will present the authentication realm (typically a description of the computer or system being accessed) to the user and prompt for a user name and password. The user may decide to cancel at this point. Authentication Authentication API Basic Authentication Basic Authentication MUST NOT be performed over a non-secure (HTTP) connection. Because client communications are often through unsecured hotspots, it is recommended that HTTPS (with the authentication of server certificates) be used for all communications. Clients MUST NOT include authentication credentials in the URL to the server. That is, this syntax is strictly forbidden: Data Security Considerations Device-and-server interactions for which the server requires authentication MUST implement either Basic authentication or the OpenRosa Restricted Digest authentication scheme as detailed below. The server or device MAY additionally implement other authentication schemes. Digest Authentication Calculations Digest Authentication Example Interaction Digest Authentication Security Considerations Digest Authentication is based upon the MD5 hash algorithm which is now considered too weak for mainstream cryptographic uses. Digest Authentication remains viable only when the cnonce and nonce values are random and reasonably long. The use of longer random strings (e.g., random UUIDs have 126 bits of randomness) is critical for the continued use of this authentication mechanism. Even with HTTPS, sending this is not a highly secure practice. Even with the more secure Digest Authentication, HTTPS is recommended. Example calculation of response using MD5 For Basic Authentication, the "response" value is simply a base-64 compression of the user name concatenated with ":" and the plain-text password, as specified in RFC2617. For Digest Authentication, the "response" value is calculated in three steps, as follows. Where values are combined, they are delimited by colon symbols. HTTPS requires that the server be configured with an SSL certificate issued by a signing authority. Man-in-the-middle attacks are possible over HTTPS if clients do not authenticate the server's SSL certificate (or, less commonly, if the client device or signing authority has been compromised). Implementation No authentication Non-device (for example, browser) interactions for which the server requires authentication are NOT required to support Basic or the OpenRosa Restricted Digest authentication scheme. That is, they are allowed to only support Form-based or some other authentication scheme. Once a user name and password have been supplied, the client re-sends the same request but adds an authentication header that includes the response code. Once the client is aware that basic authentication is required, it SHOULD proactively supply the basic authentication credentials on every secure request to the server, rather than wait for the server to reject the request with a ``401`` response. OpenRosa Restricted Digest Authentication OpenRosa compliant client devices MUST authenticate server certificates when establishing HTTPS channels to those servers. OpenRosa compliant devices MUST support both: OpenRosa compliant servers MUST support at least one of either: Overview RFC 2617 (HTTP Authentication: Basic and Digest Access Authentication) RFC2069 Request (username "Mufasa", password "Circle Of Life") Request with username and password Request: Response Response: Servers MUST conform to RFC2617 for returning one or more authentication schemes in their ``401`` challenge. These define the authentication interactions that the server is willing to accept from the client (for example: Basic, Digest) Servers which implement the Authorization API should follow the specifications provided below in order to be compliant with OpenRosa standards. The Digest Authentication response value is thus sent in such a way that an adversary can extract the user name from the response, but cannot extract the password from the response. It can therefore be sent over an unsecured channel (for example, HTTP ). The MD5 hash of the combined HA1 result, server nonce (nonce), request counter (nc), client nonce (cnonce), quality of protection code (qop) and HA2 result is calculated. The result, the user name and the cnonce are the "response" value provided by the client. The MD5 hash of the combined method and digest URI is calculated, e.g. of "GET" and "/dir/index.html". The result is referred to as HA2. The MD5 hash of the combined user name, authentication realm and password is calculated. The result is referred to as HA1. The client asks for a resource that requires authentication but does not provide a user name and password. Typically this is because the user simply entered the address or followed a link to the page. The device MUST make every effort to proactively supply an ``Authentication`` header line if the requested URI falls within the list of domain URIs covered by a previous authentication interaction. This is to minimize the number of authentication challenges. The server responds with the 401 response code, either requesting Digest Authentication and providing the authentication realm and a randomly-generated, single-use value called a nonce, or requesting Basic Authentication (in which case the server should also redirect and negotiate TLS channel security (https) if the client is not already communicating over https). This API provides a standardized means with which OpenRosa clients are authenticated with compliant servers. This is the `Digest Access Authentication Scheme (RFC 2617 Section 3) <https://tools.ietf.org/html/rfc2617#section-3>`_ with the following restrictions: This standard specifies the Request and Response format through which OpenRosa compliant servers authorize HTTP transactions. Typical Interaction We are following RFC2617 with additional OpenRosa compliance requirements defined in the implementation section below to ensure that the Digest Authentication implementations across devices do not compromise security and that they all implement a well-defined common subset of the RFC2617 Digest Authentication mechanism. algorithm --- server MUST omit or specify "MD5" cnonce --- device SHOULD use a string representation of at least a 48-bit random value (a random UUID has 126-bit randomness) for the cnonce. domain --- server MUST specify to help device with proactive inclusion of Authenticate: header records. opaque --- device MUST return if supplied; server MAY supply this or omit it qop --- device MUST support: omitted and "auth"; server MAY request any of these. stale --- device MUST make every effort to not prompt the user for username and password if this is TRUE but instead recompute the key with previously cached values for the username and password. the `Basic Authentication mechanism also outlined in RFC2617 <https://tools.ietf.org/html/rfc2617#section-2>`_. the subset of `RFC2617 Digest Authentication <https://tools.ietf.org/html/rfc2617#section-3>`_ defined below 