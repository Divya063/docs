��    F      L              |     }  C   �  @   �  M     U   b  Y   �  A     <   T  �   �  �     �   �     G     U     s     �     �  s   �  r  "	  �  �
  I   I  Q  �     �  �  �  L  �  �   �  �   �     �  K   �     �  �    �   �     �    �  !  �  >   �  �   $  W     (  o  /  �  "  �  
   �     �  �   �     �  g   �          :  >   L     �     �  "   �  �   �  �  �   �   8#  �  �#  4   �&  W   �&  1  "'     T(  @   h(     �(  �   �(  �  |)     K,  �   S,  f   -  O   v-  P   �-     .  �  .     �/  C   �/  @    0  M   a0  U   �0  Y   1  A   _1  <   �1  �   �1  �   j2  �   3     �3     �3     �3     �3     �3  s   �3  r  o4  �  �5  I   �7  Q  �7     29  �  G9  L  �:  �   F<  �   ;=     �=  K   �=     7>  �  Q>  �   @     �@    A  !  B  >   2C  �   qC  W   dD  (  �D  /  �E  "  G  
   8I     CI  �   LI     �I  g   J     lJ     �J  >   �J     �J     �J  "   K  �   5K  �  �K  �   �N  �  7O  4   �Q  W   R  1  oR     �S  @   �S     �S  �   T  �  �T     �W  �   �W  f   \X  O   �X  P   Y     dY   **On Powershell** :doc:`ODK Aggregate 1.0.4 Production or higher <aggregate-install>` :doc:`ODK Briefcase 1.0 Production or higher<briefcase-install>` :doc:`ODK Collect 1.2 Release Candidate 1 (RC1) or higher  <collect-install>` :file:`/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security` :file:`/Library/Java/JavaVirtualMachines/jdk1.x.x_xxx.jdk/Contents/Home/jre/lib/security` :file:`C:\\Program Files\\Java\\jdk1.x.x_xxx\\jre\\lib\\security` :file:`C:\\Program Files\\Java\\jre1.x.x_xxx\\lib\\security` Alternatively, you can use the command ``less MyPublicKey.pem`` to print the contents into the terminal and directly copy/paste from there. As shown, the ``<bind/>`` calculates an instanceID value comparable to the instanceID value ODK Aggregate will generate when a form does not have an instanceID field. Check **$env:path** to be sure :file:`path\\OpenSSL-Win64\\bin` is in there.If it is not, run the following command in Powershell: Configuration Constructing the RSA Key Pair Create a private key Creating RSA Key pair Encrypted Forms Encrypted form definitions must include a unique OpenRosa instanceID and have an explicit ``<submission/>`` element Encrypted forms apply asymmetric public key encryption at the time the form is finalized within ODK Collect. This encrypted form can then be submitted up to ODK Aggregate and downloaded to ODK Briefcase. ODK Briefcase, when supplied with the asymmetric private key (which ODK Briefcase never stores), can then decrypt and export the form data as a CSV file for your use. Encrypted forms provide a mechanism to keep your data private even when using **http:** for communications (e.g., when you do not have an **SSL certificate** or **https:** is not available). Encrypted forms may also enable Google App Engine deployments (and deployments using other web database services, e.g., AWS) to comply with data privacy laws, eliminating the necessity for setting up your own servers to meet those requirements. Encrypted forms require the following *minimum versions* of the ODK tools Encrypting a form ensures that the finalized form is not readable and is not tampered with. However, there is nothing preventing a malicious adversary from the wholesale replacement of a finalized form with falsified data or the synthesis and submission of extra data — these are not contingencies that encrypted forms seek to address. Extract a public key For ODK Briefcase, you must download and install the *Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files 6* from the `Java download site <http://www.oracle.com/technetwork/java/javase/downloads/index.html#other>`_; for previous versions of Java, it is available `here <http://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html>`_. This is required for decryption to be successful. For Windows, download and run the OpenSSL installer appropriate for your system from OpenSSL for Windows. When it asks whether to copy the DLLs to the Windows system directory or to the :file:`/bin` directory, choose the :file:`/bin` directory (either will work, but this will minimize the pollution of the Windows system directory) For reference, you can checkout the `tutorial encrypted-XLSForm <https://docs.google.com/spreadsheets/d/1O2VW5dNxXeyr-V_GB3spS6QPX4rtqtt7ijqP_uZLU3I/edit#gid=390337726>`_.It is for viewing purpose only but you can make your own copy to edit it. If you are on Windows, open a PowerShell or command prompt window. Change directories to the :file:`/bin` directory in the OpenSSL directory. e.g., If you are on Windows, run: If you are on a Mac, open the terminal. Change directories to your Desktop. If you are on a Mac, run: If you are using :doc:`XLSForm <xlsform>`, then form encryption is governed by the :guilabel:`settings` on the `Settings Worksheet <http://xlsform.org/#settings_ws>`_. Encrypted forms must specify a *submission_url* and a *public_key* on this worksheet. If both are specified, XLSForm will generate an encrypted-form definition. Skip to the following sections to see how to create a public-private key pair and specify the public key. If you use punctuation other than colon and dash, or any special characters, please test thoroughly to ensure that ODK Aggregate correctly handles those characters during submissions and when the form is pulled down to ODK Briefcase. Install OpenSSL (Windows only) Move the :file:`MyPrivateKey.pem` file to a secure location. It does not have a password encoding it, so anyone can decrypt your data if they have access to this file. This is the private key file that you will give to ODK Briefcase when decrypting the data. Navigate into the extracted directory tree and copy the :file:`local_policy.jar` and :file:`US_export_policy.jar` files to the :file:`lib\security` directory under the installation directory of the Java Runtime Environment (JRE) of your computer, replacing earlier versions of these files. Next, you need to extract the public key for this private key. ODK Aggregate cannot meaningfully publish encrypted forms to Google Spreadsheets or Fusion Tables since the encryption obscures the entire contents of the form and ODK Aggregate never possesses the asymmetric key required to decrypt the form. ODK Aggregate will only hold the encrypted submission with no access to the private key ODK Briefcase will emit the CSV with an extra final column that indicates whether the signature of the encrypted file was good or bad.  It would be bad if any of the attachments are missing or if there was tampering (other than the wholesale replacement of a submission, which can't be detected). Open the :file:`MyPublicKey.pem` file and copy the resulting very-long string inside **----BEGIN/END----** lines and paste it into the **public_key field** in the XLSForm settings worksheet. This very-long string will become the *base64RsaPublicKey* attribute in the resulting encrypted form definition. Operationally, you would add the form definition to the ODK Aggregate server identified in the ``<submission>`` tag's action attribute, and deploy everything using ODK Collect 1.2 RC1 or later, figure out how you want to implement a periodic SD Card wiping protocol for your devices, and you're done. Submissions will be encrypted when marked as complete. Once the data is on ODK Aggregate, use ODK Briefcase to download the encrypted submissions to your PC, and then specify the private key PEM file when decrypting and generating the CSV files. Operations Overview RSA public-private key pairs are generated using the OpenSSL software package. This is pre-installed on OSX and Linux but needs to be downloaded and installed on Windows. Requirements Right-click, choose :guilabel:`Extract files...` and extract the files from the downloaded zip archive. Run the following command: Security Concerns Select the downloaded UCE zip archive file in the file viewer. Storing and using the keys The JRE is usually found here: The JRE is usually installed here: The following command will create a 2048-bit private key and write it to the :file:`MyPrivateKey.pem` file. This may complain about a missing configuration file. You can ignore this warning. The non-encrypted data is available on the ODK Collect device during data collection and whenever a form is saved without marking it as complete. Once you mark a form as complete (finalize it), ODK Collect will generate a random 256-bit symmetric key, encrypt the form contents and all attachments with this key, then construct a submission manifest which describes the encrypted submission and an asymmetric-key encryption of the symmetric key used for the encryption. This manifest is the "form" that is uploaded to ODK Aggregate, with the encrypted form contents and its encrypted attachments appearing as attachments to this submission manifest "form." The presence of the OpenRosa metadata block, as defined here: `OpenRosa 1.0 Metadata Schema <https://bitbucket.org/javarosa/javarosa/wiki/OpenRosaMetaDataSchema>`_; is required. The required element to make this form an encrypted form is the ``<submission/>`` tag. Within this tag, the method attribute should always be **form-data-post**. The action attribute should be the url to which the submission should be posted; this is the ODK Aggregate website url with Aggregate.html replaced by submission. Finally, what identifies the form as an encrypted form is the presence of a *base64RsaPublicKey* attribute. This should be the base64 encoding of the RSA public key that ODK Collect uses to encrypt the symmetric encryption key it creates to encrypt a finalized instance of this form (a different symmetric encryption key is created for every finalized form) These requirements are covered in more detail below. This may also complain about a missing configuration file. You can ignore this warning. This process ensures that the finalized form's data (and media attachments) are encrypted before being submitted to ODK Aggregate, remain encrypted while stored on ODK Aggregate, and remain encrypted as the data and attachments are pulled into ODK Briefcase, where they are again stored in encrypted form. To install the JCE: Updating the public_key field in the XLSForm settings worksheet. Uploading Finalized Forms When using encrypted forms, ODK Aggregate serves only as a data aggregation point — you must download, decrypt, and export the data using ODK Briefcase to access the unencrypted data While ODK Collect attempts to remove all unencrypted copies of a finalized form and its attachments from the device, because ODK Collect uses third-party applications for image capture, etc., and because of the potential for Forced Close events during the clean-up process, we cannot guarantee that all copies will have been destroyed. Furthermore, because of the way an SD card writes and deletes information, there is a possibility of this data being recoverable from the free space on the SD card. Your organization should investigate the extra steps needed to ensure all data is deleted from the SD cards on your ODK Collect devices and should establish procedures to periodically wipe and reinstall those devices. Windows You  need to be especially careful that this is ONLY the public key and not the contents of the original public-private key file (which would also appear to work but provide no security). You can define any value for the instanceID field, but it must be unique across all collected surveys. You can use Notepad (Windows) or TextEdit (Mac) to open :file:`MyPublicKey.pem` You might also have a JDK. If you do, you must also install the JCE files there: macOS Project-Id-Version: Open Data Kit 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-09 19:25+0530
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: Japanese (https://www.transifex.com/sample-odk/teams/83397/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 **On Powershell** :doc:`ODK Aggregate 1.0.4 Production or higher <aggregate-install>` :doc:`ODK Briefcase 1.0 Production or higher<briefcase-install>` :doc:`ODK Collect 1.2 Release Candidate 1 (RC1) or higher  <collect-install>` :file:`/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/lib/security` :file:`/Library/Java/JavaVirtualMachines/jdk1.x.x_xxx.jdk/Contents/Home/jre/lib/security` :file:`C:\\Program Files\\Java\\jdk1.x.x_xxx\\jre\\lib\\security` :file:`C:\\Program Files\\Java\\jre1.x.x_xxx\\lib\\security` Alternatively, you can use the command ``less MyPublicKey.pem`` to print the contents into the terminal and directly copy/paste from there. As shown, the ``<bind/>`` calculates an instanceID value comparable to the instanceID value ODK Aggregate will generate when a form does not have an instanceID field. Check **$env:path** to be sure :file:`path\\OpenSSL-Win64\\bin` is in there.If it is not, run the following command in Powershell: Configuration Constructing the RSA Key Pair Create a private key Creating RSA Key pair Encrypted Forms Encrypted form definitions must include a unique OpenRosa instanceID and have an explicit ``<submission/>`` element Encrypted forms apply asymmetric public key encryption at the time the form is finalized within ODK Collect. This encrypted form can then be submitted up to ODK Aggregate and downloaded to ODK Briefcase. ODK Briefcase, when supplied with the asymmetric private key (which ODK Briefcase never stores), can then decrypt and export the form data as a CSV file for your use. Encrypted forms provide a mechanism to keep your data private even when using **http:** for communications (e.g., when you do not have an **SSL certificate** or **https:** is not available). Encrypted forms may also enable Google App Engine deployments (and deployments using other web database services, e.g., AWS) to comply with data privacy laws, eliminating the necessity for setting up your own servers to meet those requirements. Encrypted forms require the following *minimum versions* of the ODK tools Encrypting a form ensures that the finalized form is not readable and is not tampered with. However, there is nothing preventing a malicious adversary from the wholesale replacement of a finalized form with falsified data or the synthesis and submission of extra data — these are not contingencies that encrypted forms seek to address. Extract a public key For ODK Briefcase, you must download and install the *Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files 6* from the `Java download site <http://www.oracle.com/technetwork/java/javase/downloads/index.html#other>`_; for previous versions of Java, it is available `here <http://www.oracle.com/technetwork/java/javase/downloads/jce-7-download-432124.html>`_. This is required for decryption to be successful. For Windows, download and run the OpenSSL installer appropriate for your system from OpenSSL for Windows. When it asks whether to copy the DLLs to the Windows system directory or to the :file:`/bin` directory, choose the :file:`/bin` directory (either will work, but this will minimize the pollution of the Windows system directory) For reference, you can checkout the `tutorial encrypted-XLSForm <https://docs.google.com/spreadsheets/d/1O2VW5dNxXeyr-V_GB3spS6QPX4rtqtt7ijqP_uZLU3I/edit#gid=390337726>`_.It is for viewing purpose only but you can make your own copy to edit it. If you are on Windows, open a PowerShell or command prompt window. Change directories to the :file:`/bin` directory in the OpenSSL directory. e.g., If you are on Windows, run: If you are on a Mac, open the terminal. Change directories to your Desktop. If you are on a Mac, run: If you are using :doc:`XLSForm <xlsform>`, then form encryption is governed by the :guilabel:`settings` on the `Settings Worksheet <http://xlsform.org/#settings_ws>`_. Encrypted forms must specify a *submission_url* and a *public_key* on this worksheet. If both are specified, XLSForm will generate an encrypted-form definition. Skip to the following sections to see how to create a public-private key pair and specify the public key. If you use punctuation other than colon and dash, or any special characters, please test thoroughly to ensure that ODK Aggregate correctly handles those characters during submissions and when the form is pulled down to ODK Briefcase. Install OpenSSL (Windows only) Move the :file:`MyPrivateKey.pem` file to a secure location. It does not have a password encoding it, so anyone can decrypt your data if they have access to this file. This is the private key file that you will give to ODK Briefcase when decrypting the data. Navigate into the extracted directory tree and copy the :file:`local_policy.jar` and :file:`US_export_policy.jar` files to the :file:`lib\security` directory under the installation directory of the Java Runtime Environment (JRE) of your computer, replacing earlier versions of these files. Next, you need to extract the public key for this private key. ODK Aggregate cannot meaningfully publish encrypted forms to Google Spreadsheets or Fusion Tables since the encryption obscures the entire contents of the form and ODK Aggregate never possesses the asymmetric key required to decrypt the form. ODK Aggregate will only hold the encrypted submission with no access to the private key ODK Briefcase will emit the CSV with an extra final column that indicates whether the signature of the encrypted file was good or bad.  It would be bad if any of the attachments are missing or if there was tampering (other than the wholesale replacement of a submission, which can't be detected). Open the :file:`MyPublicKey.pem` file and copy the resulting very-long string inside **----BEGIN/END----** lines and paste it into the **public_key field** in the XLSForm settings worksheet. This very-long string will become the *base64RsaPublicKey* attribute in the resulting encrypted form definition. Operationally, you would add the form definition to the ODK Aggregate server identified in the ``<submission>`` tag's action attribute, and deploy everything using ODK Collect 1.2 RC1 or later, figure out how you want to implement a periodic SD Card wiping protocol for your devices, and you're done. Submissions will be encrypted when marked as complete. Once the data is on ODK Aggregate, use ODK Briefcase to download the encrypted submissions to your PC, and then specify the private key PEM file when decrypting and generating the CSV files. Operations Overview RSA public-private key pairs are generated using the OpenSSL software package. This is pre-installed on OSX and Linux but needs to be downloaded and installed on Windows. Requirements Right-click, choose :guilabel:`Extract files...` and extract the files from the downloaded zip archive. Run the following command: Security Concerns Select the downloaded UCE zip archive file in the file viewer. Storing and using the keys The JRE is usually found here: The JRE is usually installed here: The following command will create a 2048-bit private key and write it to the :file:`MyPrivateKey.pem` file. This may complain about a missing configuration file. You can ignore this warning. The non-encrypted data is available on the ODK Collect device during data collection and whenever a form is saved without marking it as complete. Once you mark a form as complete (finalize it), ODK Collect will generate a random 256-bit symmetric key, encrypt the form contents and all attachments with this key, then construct a submission manifest which describes the encrypted submission and an asymmetric-key encryption of the symmetric key used for the encryption. This manifest is the "form" that is uploaded to ODK Aggregate, with the encrypted form contents and its encrypted attachments appearing as attachments to this submission manifest "form." The presence of the OpenRosa metadata block, as defined here: `OpenRosa 1.0 Metadata Schema <https://bitbucket.org/javarosa/javarosa/wiki/OpenRosaMetaDataSchema>`_; is required. The required element to make this form an encrypted form is the ``<submission/>`` tag. Within this tag, the method attribute should always be **form-data-post**. The action attribute should be the url to which the submission should be posted; this is the ODK Aggregate website url with Aggregate.html replaced by submission. Finally, what identifies the form as an encrypted form is the presence of a *base64RsaPublicKey* attribute. This should be the base64 encoding of the RSA public key that ODK Collect uses to encrypt the symmetric encryption key it creates to encrypt a finalized instance of this form (a different symmetric encryption key is created for every finalized form) These requirements are covered in more detail below. This may also complain about a missing configuration file. You can ignore this warning. This process ensures that the finalized form's data (and media attachments) are encrypted before being submitted to ODK Aggregate, remain encrypted while stored on ODK Aggregate, and remain encrypted as the data and attachments are pulled into ODK Briefcase, where they are again stored in encrypted form. To install the JCE: Updating the public_key field in the XLSForm settings worksheet. Uploading Finalized Forms When using encrypted forms, ODK Aggregate serves only as a data aggregation point — you must download, decrypt, and export the data using ODK Briefcase to access the unencrypted data While ODK Collect attempts to remove all unencrypted copies of a finalized form and its attachments from the device, because ODK Collect uses third-party applications for image capture, etc., and because of the potential for Forced Close events during the clean-up process, we cannot guarantee that all copies will have been destroyed. Furthermore, because of the way an SD card writes and deletes information, there is a possibility of this data being recoverable from the free space on the SD card. Your organization should investigate the extra steps needed to ensure all data is deleted from the SD cards on your ODK Collect devices and should establish procedures to periodically wipe and reinstall those devices. Windows You  need to be especially careful that this is ONLY the public key and not the contents of the original public-private key file (which would also appear to work but provide no security). You can define any value for the instanceID field, but it must be unique across all collected surveys. You can use Notepad (Windows) or TextEdit (Mac) to open :file:`MyPublicKey.pem` You might also have a JDK. If you do, you must also install the JCE files there: macOS 