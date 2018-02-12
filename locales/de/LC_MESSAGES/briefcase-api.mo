��    H      \              �  C   �  �   �  W   �  �   �     �     �  "   �     �  9   �  �   +     �       ;   '  }   c  �   �  �   �	  _   *
  �   �
       $   #  $   H     m  �   z  '   F  �   n     (  �   @    �  p   �     d  %   �  8   �     �     �     �     �               (  o   7  p   �  �          T   �  $   �  ?   �  #   >  p   b  �   �  �   g  (   e     �  )   �  �   �     d  Z   �  /   �       �   !  �   �  e   �  ^     J   e    �  z   �  2   :  �   m  �   N  A   �  =     
   [  Q  f  C   �  �   �  W   �  �         �      �   "   �      �   9   !  �   F!     "     *"  ;   B"  }   ~"  �   �"  �   �#  _   E$  �   �$     ,%  $   >%  $   c%     �%  �   �%  '   a&  �   �&     C'  �   ['    �'  p   )     )  %   �)  8   �)     �)     �)     *     *     *     1*     C*  o   R*  p   �*  �   3+     ,  T   �,  $   �,  ?   -  #   Y-  p   }-  �   �-  �   �.  (   �/     �/  )   �/  �   �/     0  Z   �0  /   �0     '1  �   <1  �   �1  e   �2  ^   !3  J   �3    �3  z   �4  2   U5  �   �5  �   i6  A   �6  =   87  
   v7   *formUpload* to upload a form and its media files to ODK Aggregate. After a submission has been pushed to the server, it updates the top-level element, inserting the ``instanceID`` and ``submissionDate`` fields if they are not already present. An example, where no version was attached to the form definition uploaded to Aggregate: Because of the limitations of HTML file input tags, all media files must be in a single folder (no sub-directories). The server assumes this is the case. Briefcase Aggregate API Briefcase Treatment Download an individual submission. Download forms and media files Download forms and media files using URLs form discovery. Download the list of completed submissions for a given form. Incomplete or partial submissions **must not** be returned. You may wish to report only approved submissions if you have a QA review step. GET view/downloadSubmission GET view/submissionList Here is a sample web page fragment to post to this servlet: If the OpenRosa Metadata block is not present, it uses the instanceID attribute value as the instance ID for this submission. If the ``submissionDate`` is present, it uses that value as the submission date for this submission (rather than the current datetime). SubmissionDate should be in ISO8601 format. If the form is an encrypted form, the ``encrypted`` attribute is present, otherwise it is omitted. If present, it has a value of *yes* (vs. *true*). If they are present, it compares the fields and warns if there is any discrepancy between them. In general, the server should adhere to the OpenRosa API described `here <https://bitbucket.org/javarosa/javarosa/wiki/OpenRosaAPI>`_. Interface Details Interfaces used during Pull actions. Interfaces used during Push actions. Introduction It is a multipart POST. The POST always contains the form definition file, and has as many media files as would fit in under 10MB. This follows the behavior of the OpenRosa Form Submission/Overwrite API. It is same as the API ODK Collect uses. Like the ``<submissionMetadata>`` tag on the Form Submission/Overwrite API response, the top-level element in the submission XML contains all the metadata fields supplied by the server. ODK Briefcase Treatment ODK Briefcase downloads the forms so that it has the form model available for CSV exports and to ensure that a push uses matching form definitions. ODK Briefcase repeatedly calls this API, passing in the previous response's ``resumptionCursor`` value until the returned ``resumptionCursor`` value matches that given in the request. Once it no longer changes, ODK Briefcase assumes that all id data has been downloaded from the server. One Query argument: ``formId`` -- a multipart XPath-like string query that identifies the individual submission. OpenRosa Form Discovery API OpenRosa Form Submission/Overwite API OpenRosa Form Submission/Overwrite API (with extensions) Pull Push Response Response Document Returned Document Server Processing The APIs used: The ``<mediaFile>`` tag has the same interpretation as it does in the OpenRosa Form Listing API's manifest XML. The ``<submissionMetadata/>`` tag contains all the metadata for this submission that the server has assigned it. The ``isComplete`` flag is *true* if the server has all attachments associated with this filled-in form. Otherwise, it will be *false*. If it is *true*, the ``markedAsCompleteDate`` will be the date when the submission became complete. The ``resumptionCursor`` holds opaque data that is used by the server to track the location at which to resume the list of ids. The ``submissionDate`` is the date of first submission of this record on the server. The date fields are formatted using: The form id and version are given (version is omitted if null). The formId is a string of the form: The instanceID is either the server-assigned instance id or the ``instanceID`` from the OpenRosa Metadata block. The only 2 fields ODK Briefcase currently uses are the ``instanceID`` and ``submissionDate`` fields. It may eventually use the ``isComplete`` flag. The reconstructed submission XML generally does not respect the namespaces of the original form definition. As a special case, if it finds a form group that could be interpreted as the OpenRosa Metadata block, it does use the ``orx`` namespace for that. The response from the server looks like: The response is of the form: The returned XML document is of the form: The server does special processing to look for an ``instanceID`` or a ``submissionDate`` attribute on the top-level element of the submission. There are 3 query arguments: This describes the interfaces ODK Briefcase uses when interacting with ODK Aggregate v1.0. This is ``FormUploadServlet`` in ODK Aggregate. Vanilla conformance. Where the ``idList`` contains a series of ``id`` elements containing strings that can be used to construct the needed string to pass to the ``view/downloadSubmission`` API. While it is desirable for the ``idvalue`` to be the ``instanceID`` of the submission, it is not required. For ODK Aggregate v1.x, it will be the instance ID; for ODK Aggregate 0.9.x, it is not the instance ID. ``cursor`` -- an opaque string used by the server to as a query resume point. Omit on the first call. ``formId`` -- identifies the form. Just the id from the form definition (e.g., geo_tagger_v2). ``formid`` is the form id, as would be provided to the submissionList API. ``formid`` may be a URL (since it might be an xmlns), so when parsing this query parameter, it is safest to find the last instance of ``@version`` and split the string at that location. In any case, it is your string to parse and interpret for your server configuration. ``idvalue`` is the value of the individual submission id returned by the ``view/submissionList``      API, usually a UUID. ``numEntries`` -- the number of entries to return. ``topElement`` is the name of the top-level element in the submission. This is the element nested just within the ``<instance>`` element of the ``<model>`` (it also has the id attribute, which should be equal to the formid). ``version`` is either null if not used or the version number of the form (ODK Aggregate only supports integer version strings at this time). ``view/downloadSubmission`` to download an individual submission. ``view/submissionList`` to obtain a chunk of submission keys. formUpload Project-Id-Version: Open Data Kit 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-09 19:25+0530
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 *formUpload* to upload a form and its media files to ODK Aggregate. After a submission has been pushed to the server, it updates the top-level element, inserting the ``instanceID`` and ``submissionDate`` fields if they are not already present. An example, where no version was attached to the form definition uploaded to Aggregate: Because of the limitations of HTML file input tags, all media files must be in a single folder (no sub-directories). The server assumes this is the case. Briefcase Aggregate API Briefcase Treatment Download an individual submission. Download forms and media files Download forms and media files using URLs form discovery. Download the list of completed submissions for a given form. Incomplete or partial submissions **must not** be returned. You may wish to report only approved submissions if you have a QA review step. GET view/downloadSubmission GET view/submissionList Here is a sample web page fragment to post to this servlet: If the OpenRosa Metadata block is not present, it uses the instanceID attribute value as the instance ID for this submission. If the ``submissionDate`` is present, it uses that value as the submission date for this submission (rather than the current datetime). SubmissionDate should be in ISO8601 format. If the form is an encrypted form, the ``encrypted`` attribute is present, otherwise it is omitted. If present, it has a value of *yes* (vs. *true*). If they are present, it compares the fields and warns if there is any discrepancy between them. In general, the server should adhere to the OpenRosa API described `here <https://bitbucket.org/javarosa/javarosa/wiki/OpenRosaAPI>`_. Interface Details Interfaces used during Pull actions. Interfaces used during Push actions. Introduction It is a multipart POST. The POST always contains the form definition file, and has as many media files as would fit in under 10MB. This follows the behavior of the OpenRosa Form Submission/Overwrite API. It is same as the API ODK Collect uses. Like the ``<submissionMetadata>`` tag on the Form Submission/Overwrite API response, the top-level element in the submission XML contains all the metadata fields supplied by the server. ODK Briefcase Treatment ODK Briefcase downloads the forms so that it has the form model available for CSV exports and to ensure that a push uses matching form definitions. ODK Briefcase repeatedly calls this API, passing in the previous response's ``resumptionCursor`` value until the returned ``resumptionCursor`` value matches that given in the request. Once it no longer changes, ODK Briefcase assumes that all id data has been downloaded from the server. One Query argument: ``formId`` -- a multipart XPath-like string query that identifies the individual submission. OpenRosa Form Discovery API OpenRosa Form Submission/Overwite API OpenRosa Form Submission/Overwrite API (with extensions) Pull Push Response Response Document Returned Document Server Processing The APIs used: The ``<mediaFile>`` tag has the same interpretation as it does in the OpenRosa Form Listing API's manifest XML. The ``<submissionMetadata/>`` tag contains all the metadata for this submission that the server has assigned it. The ``isComplete`` flag is *true* if the server has all attachments associated with this filled-in form. Otherwise, it will be *false*. If it is *true*, the ``markedAsCompleteDate`` will be the date when the submission became complete. The ``resumptionCursor`` holds opaque data that is used by the server to track the location at which to resume the list of ids. The ``submissionDate`` is the date of first submission of this record on the server. The date fields are formatted using: The form id and version are given (version is omitted if null). The formId is a string of the form: The instanceID is either the server-assigned instance id or the ``instanceID`` from the OpenRosa Metadata block. The only 2 fields ODK Briefcase currently uses are the ``instanceID`` and ``submissionDate`` fields. It may eventually use the ``isComplete`` flag. The reconstructed submission XML generally does not respect the namespaces of the original form definition. As a special case, if it finds a form group that could be interpreted as the OpenRosa Metadata block, it does use the ``orx`` namespace for that. The response from the server looks like: The response is of the form: The returned XML document is of the form: The server does special processing to look for an ``instanceID`` or a ``submissionDate`` attribute on the top-level element of the submission. There are 3 query arguments: This describes the interfaces ODK Briefcase uses when interacting with ODK Aggregate v1.0. This is ``FormUploadServlet`` in ODK Aggregate. Vanilla conformance. Where the ``idList`` contains a series of ``id`` elements containing strings that can be used to construct the needed string to pass to the ``view/downloadSubmission`` API. While it is desirable for the ``idvalue`` to be the ``instanceID`` of the submission, it is not required. For ODK Aggregate v1.x, it will be the instance ID; for ODK Aggregate 0.9.x, it is not the instance ID. ``cursor`` -- an opaque string used by the server to as a query resume point. Omit on the first call. ``formId`` -- identifies the form. Just the id from the form definition (e.g., geo_tagger_v2). ``formid`` is the form id, as would be provided to the submissionList API. ``formid`` may be a URL (since it might be an xmlns), so when parsing this query parameter, it is safest to find the last instance of ``@version`` and split the string at that location. In any case, it is your string to parse and interpret for your server configuration. ``idvalue`` is the value of the individual submission id returned by the ``view/submissionList``      API, usually a UUID. ``numEntries`` -- the number of entries to return. ``topElement`` is the name of the top-level element in the submission. This is the element nested just within the ``<instance>`` element of the ``<model>`` (it also has the id attribute, which should be equal to the formid). ``version`` is either null if not used or the version number of the form (ODK Aggregate only supports integer version strings at this time). ``view/downloadSubmission`` to download an individual submission. ``view/submissionList`` to obtain a chunk of submission keys. formUpload 