��    k      t              �  �   �  L   �     �  �   V  Z   	  �   `	  {   9
    �
  �   �  Y   j  @   �  c     �   i  T     �   l  q   H  �   �  h   �  S   �  :   C  �   ~  �     e   �  f   �  i   ]  p   �  �   8  h   �  ~   [  {   �  T   V  �   �  a   =     �     �  �   �  �   �  �   }  �     %   �     �  	   �     �  ;     >   I  ;   �     �     �  S   �     ;     T     k     x     �     �  V   �  �   �  �   �  �       �  {   �     v   1   �   (   �      �   	   !     !  O   (!     x!  7   �!     �!     �!  W  �!  9   %#  �   _#     �#     �#  ,   $     A$  d   Q$  �   �$  _   �%     &  +  !&     M'  �   ['  �   (  B   �(  o   )  
   x)     �)     �)     �)  !   �)     �)     *  ~   
*  ^   �*  �   �*  i   u+  T   �+  �  4,     �-  Q   .  w   _.     �.  �  �.  �   �0  L   W1     �1  �   $2  Z   �2  �   .3  {   4    �4  �   �5  Y   86  @   �6  c   �6  �   77  T   �7  �   :8  q   9  �   �9  h   T:  S   �:  :   ;  �   L;  �   �;  e   ^<  f   �<  i   +=  p   �=  �   >  h   �>  ~   )?  {   �?  T   $@  �   y@  a   A     mA     |A  �   �A  �   �B  �   KC  �   �C  %   �D     �D  	   �D     �D  ;   �D  >   E  ;   VE     �E     �E  S   �E     	F     "F     9F     FF     RF     bF  V   sF  �   �F  �   WG  �   �G    �H  {   �I     DJ  1   [J  (   �J     �J  	   �J     �J  O   �J     FK  7   NK     �K     �K  W  �K  9   �L  �   -M     �M     �M  ,   �M     N  d   N  �   �N  _   O     �O  +  �O     Q  �   )Q  �   �Q  B   �R  o   �R  
   FS     QS     kS     �S  !   �S     �S     �S  ~   �S  ^   WT  �   �T  i   CU  T   �U  �  V     �W  Q   �W  w   -X     �X   :guilabel:`Auto send` When enabled, forms are sent immediately when finalized if the device can connect to the internet. You can specify whether to send over WiFi, cellular data, or both. :guilabel:`Basemap` sets the specific map used when opening the mapping app. :guilabel:`Constraint processing` used to select when response constraints are validated: After each swipe, or at finalization. :guilabel:`Default to finalized` When enabled, forms are automatically finalized upon reaching the end of the form. You can opt out of finalizing any form when completing it. :guilabel:`Delete after send` When checked, form instances are deleted once they are sent. :guilabel:`Form Entry Settings` : Admin can configure the `form entry items` visible to the users. For example, unchecking the :guilabel:`Change Language` option will prevent the user from changing the form language. :guilabel:`High res video` enables or disables high-resolution video recordings if supported by the video application used. :guilabel:`Image size` (v1.11.0+) specifies the maximum number of pixels for the long edge of all images added to forms. Images are scaled down immediately after being added. This setting can be overridden at the form question level. There are five size options available: :guilabel:`Import saved forms as finalized` When enabled, forms added directly to the :file:`instances/` directory are automatically set to :formstate:`Finalized`. :guilabel:`Language` - Allows us to select the device language from 49 available options. :guilabel:`Large (3072px)`: used when a lot of detail is needed. :guilabel:`Main Menu Settings` : Allows admin to hide some of the main-menu options from the users. :guilabel:`Mapping SDK` sets the app used for :ref:`geopoint`, :ref:`geoshape`, and :ref:`geotrace` :doc:`form-widgets`. Options are Google Maps (default) and OpenStreetMap. :guilabel:`Medium (2048px)`: sufficiently detailed for most uses including printing. :guilabel:`Moving backwards` option in the :guilabel:`Form Entry Settings` can be unchecked to prevent the user from navigating backwards while filling a form and changing the response to a previously answered question. :guilabel:`Navigation` (Swiping or Buttons) - Allows us to select the navigation method(swipes, buttons or both). :guilabel:`Original size from camera (default)`: images are unchanged when added to a form. Used when images must contain a lot of detail or when the internet connection used to send submissions is fast. :guilabel:`Small (1024px)`: sufficiently detailed for most on-screen viewing but too small for printing. :guilabel:`Splash Screen` - An image to display when the Collect application loads. :guilabel:`Text font size` - Lets us select the font-size. :guilabel:`User Settings` : Allows admin to select the options that'll be visible to the users in the :guilabel:`General Settings` menu. :guilabel:`Very small (640px)`: used when images don't need to be detailed and the internet connection used to send submissions is slow. :menuselection:`Delete Saved Form` lists all the Saved and Blank Forms and allows you to delete them. :menuselection:`Edit Saved Form` looks for forms you've saved, lists them and allows you to edit them. :menuselection:`Fill Blank Form` allows you to fill any blank form already there in your data collection. :menuselection:`Form Management` settings handle default behavior when editing, finalizing, and importing forms. :menuselection:`Get Blank form` lists all available ODK :term:`Collect` :term:`form` :term:`widget` (question types). The details about which are available on :ref:`basic-form-widgets`. :menuselection:`Send Finalized Form` lists all the finalized forms and gives you an option to send them. :menuselection:`Server` settings manage the connection to an ODK Aggregate server or Google Drive account for form management. :menuselection:`User Interface` settings allow us to customize the way our app looks and behaves. It includes settings for: :menuselection:`User Interface` settings page also consists of the Mapping Settings. :menuselection:`User and Device Identity -> Form Metadata` sets identity values which are added to the metadata of forms completed on the device. :menuselection:`View Sent Form` displays the forms that have been sent even if they were deleted. Admin Security Admin Settings Admin settings allow you to :ref:`restrict which General Settings are seen by users <user-access-control-settings>`. To access those settings as an Admin (and see all of them), :gesture:`tap` :guilabel:`General Settings` from the Admin settings page. Admin settings can be **password protected**. If you set an :guilabel:`Admin Password` in the Admin settings screen, you will need to re-enter that password to access Admin settings in the future. After you finish generating the QR code, you can transfer it to your device and then import it by clicking on :guilabel:`Select Code from SD Card`  option. At app launch, the settings are loaded from a different location :file:`/sdcard/odk/collect.settings`, which tracks the state of your settings at all times. Collect Menus, Settings, and Security Compress it using zlib. Device ID Device-defined Disable :guilabel:`Edit Saved Form` option in the main menu Disable :guilabel:`Go To Prompt` option in the Form entry menu Disable :guilabel:`Save Form` option in the Form entry menu Email address Encode into QR code. Following is the list of keys for all settings and the set of values they can take: Form Management Settings Form Metadata Settings Form filling Form import Form submission General Settings General Settings are accessible from the :guilabel:`⋮` menu on the top-right corner. If no username is set in Form metadata settings, server username in :ref:`Server settings <server-settings>` is used by default in the form. If username is defined in Form metadata settings as well as in Server settings, username from Form metadata would be visible in form. If you choose :guilabel:`NO` as response, only the moving backwards option will be disabled and no other settings will be changed. User may be able to bypass the moving backwards settings using the other settings. If you choose :guilabel:`YES` as response, these settings will be disabled along with moving backwards and the user will not be able to bypass the moving backwards settings. When using this setting, you will generally want to set an admin password so a user can’t bypass it. If you want to ensure that form metadata username can't be changed, you can use the :ref:`admin settings <admin-settings>`. Import/Export settings Importing settings from a QR saved on your device It allows us to configure the following: List of keys for all settings Main Menu Making your own QR code Map settings are included on the :menuselection:`User Interface` settings page. Mapping ODK Collect's main menu contains the following options: Phone number QR Code QR Code or the Quick Response Code is a two dimensional barcode. QR codes can be used to configure Collect on many devices. The QR image presented contains all of your current General and Admin settings, including admin and server passwords. When this QR code is scanned from the ODK Collect app on another device, these settings are imported. QR code is a JSON object with a structure as shown below: QR code only contains settings whose values are not the default values because of the constraints on the amount of data a QR code can hold. SIM serial number Saving QR code locally See :doc:`collect-connect` for more details. Server Settings Set :guilabel:`Constraint processing` to validate upon forward swipe in the Form Management settings Settings are exported and saved so that they can be loaded to other devices. When you save external settings, they are saved to :file:`/sdcard/odk/settings/collect.settings`. You can load external settings from this location to other devices as well. Settings are saved to and loaded from different locations to avoid deleting the saved settings. Sharing QR code Since the QR code may contain the admin and server passwords without encryption, you should be careful about how you share it. It is advised to not send it through an external application but through *bluetooth*, *MMS* or any other such service that doesn't allow the third party to access the data. Subscriber ID The JSON object isn't encrypted but is compressed using `zlib <http://www.zlib.net/manual.html>`_ before encoding into QRCode. Therefore the creation process can be summarized as follows: The QR code used for settings-import contains the admin and server passwords *in plain text*. To remove them from the code, :gesture:`tap` the warning on the QR code screen. The subkeys in the general key can be a part of the admin key too. This section allows the admin to hide menu items and settings from the user. It contains the following options: Usage data Usage data is anonymized. User Access Control Settings User Interface Settings User and Device Identity Settings User-defined Username When enabled, ODK Collect sends usage and error data back to the ODK development team, which helps us improve the application. When you click on the :guilabel:`Import/Export Settings`, you see a QR Code and a few options. When you enable the moving backwards option, you have to configure the other changed settings since they are not automatically changed back. When you uncheck this option, a message will be displayed which asks you to configure following settings: Write a JSON object containing the changed settings with a structure as shown above. You can click on the |share| icon to share the QR code as an image. When you click on it, it displays a list of applications and services like *whatsapp*, *facebook*, *hangouts*, *bluetooth*, *MMS* to name a few, which can be used to share the QR code. This is useful when there are several different data collection sites and all devices have to be configured in the same way, in which case the QR code can be shared from one reference device. You can edit the following: You can go to :menuselection:`⋮ --> Save settings to disk` to save the QR code. You can import settings from a QR code saved on your device by clicking on :guilabel:`Select Code from SD Card` option. You cannot edit these: Project-Id-Version: Open Data Kit 1.0
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
 :guilabel:`Auto send` When enabled, forms are sent immediately when finalized if the device can connect to the internet. You can specify whether to send over WiFi, cellular data, or both. :guilabel:`Basemap` sets the specific map used when opening the mapping app. :guilabel:`Constraint processing` used to select when response constraints are validated: After each swipe, or at finalization. :guilabel:`Default to finalized` When enabled, forms are automatically finalized upon reaching the end of the form. You can opt out of finalizing any form when completing it. :guilabel:`Delete after send` When checked, form instances are deleted once they are sent. :guilabel:`Form Entry Settings` : Admin can configure the `form entry items` visible to the users. For example, unchecking the :guilabel:`Change Language` option will prevent the user from changing the form language. :guilabel:`High res video` enables or disables high-resolution video recordings if supported by the video application used. :guilabel:`Image size` (v1.11.0+) specifies the maximum number of pixels for the long edge of all images added to forms. Images are scaled down immediately after being added. This setting can be overridden at the form question level. There are five size options available: :guilabel:`Import saved forms as finalized` When enabled, forms added directly to the :file:`instances/` directory are automatically set to :formstate:`Finalized`. :guilabel:`Language` - Allows us to select the device language from 49 available options. :guilabel:`Large (3072px)`: used when a lot of detail is needed. :guilabel:`Main Menu Settings` : Allows admin to hide some of the main-menu options from the users. :guilabel:`Mapping SDK` sets the app used for :ref:`geopoint`, :ref:`geoshape`, and :ref:`geotrace` :doc:`form-widgets`. Options are Google Maps (default) and OpenStreetMap. :guilabel:`Medium (2048px)`: sufficiently detailed for most uses including printing. :guilabel:`Moving backwards` option in the :guilabel:`Form Entry Settings` can be unchecked to prevent the user from navigating backwards while filling a form and changing the response to a previously answered question. :guilabel:`Navigation` (Swiping or Buttons) - Allows us to select the navigation method(swipes, buttons or both). :guilabel:`Original size from camera (default)`: images are unchanged when added to a form. Used when images must contain a lot of detail or when the internet connection used to send submissions is fast. :guilabel:`Small (1024px)`: sufficiently detailed for most on-screen viewing but too small for printing. :guilabel:`Splash Screen` - An image to display when the Collect application loads. :guilabel:`Text font size` - Lets us select the font-size. :guilabel:`User Settings` : Allows admin to select the options that'll be visible to the users in the :guilabel:`General Settings` menu. :guilabel:`Very small (640px)`: used when images don't need to be detailed and the internet connection used to send submissions is slow. :menuselection:`Delete Saved Form` lists all the Saved and Blank Forms and allows you to delete them. :menuselection:`Edit Saved Form` looks for forms you've saved, lists them and allows you to edit them. :menuselection:`Fill Blank Form` allows you to fill any blank form already there in your data collection. :menuselection:`Form Management` settings handle default behavior when editing, finalizing, and importing forms. :menuselection:`Get Blank form` lists all available ODK :term:`Collect` :term:`form` :term:`widget` (question types). The details about which are available on :ref:`basic-form-widgets`. :menuselection:`Send Finalized Form` lists all the finalized forms and gives you an option to send them. :menuselection:`Server` settings manage the connection to an ODK Aggregate server or Google Drive account for form management. :menuselection:`User Interface` settings allow us to customize the way our app looks and behaves. It includes settings for: :menuselection:`User Interface` settings page also consists of the Mapping Settings. :menuselection:`User and Device Identity -> Form Metadata` sets identity values which are added to the metadata of forms completed on the device. :menuselection:`View Sent Form` displays the forms that have been sent even if they were deleted. Admin Security Admin Settings Admin settings allow you to :ref:`restrict which General Settings are seen by users <user-access-control-settings>`. To access those settings as an Admin (and see all of them), :gesture:`tap` :guilabel:`General Settings` from the Admin settings page. Admin settings can be **password protected**. If you set an :guilabel:`Admin Password` in the Admin settings screen, you will need to re-enter that password to access Admin settings in the future. After you finish generating the QR code, you can transfer it to your device and then import it by clicking on :guilabel:`Select Code from SD Card`  option. At app launch, the settings are loaded from a different location :file:`/sdcard/odk/collect.settings`, which tracks the state of your settings at all times. Collect Menus, Settings, and Security Compress it using zlib. Device ID Device-defined Disable :guilabel:`Edit Saved Form` option in the main menu Disable :guilabel:`Go To Prompt` option in the Form entry menu Disable :guilabel:`Save Form` option in the Form entry menu Email address Encode into QR code. Following is the list of keys for all settings and the set of values they can take: Form Management Settings Form Metadata Settings Form filling Form import Form submission General Settings General Settings are accessible from the :guilabel:`⋮` menu on the top-right corner. If no username is set in Form metadata settings, server username in :ref:`Server settings <server-settings>` is used by default in the form. If username is defined in Form metadata settings as well as in Server settings, username from Form metadata would be visible in form. If you choose :guilabel:`NO` as response, only the moving backwards option will be disabled and no other settings will be changed. User may be able to bypass the moving backwards settings using the other settings. If you choose :guilabel:`YES` as response, these settings will be disabled along with moving backwards and the user will not be able to bypass the moving backwards settings. When using this setting, you will generally want to set an admin password so a user can’t bypass it. If you want to ensure that form metadata username can't be changed, you can use the :ref:`admin settings <admin-settings>`. Import/Export settings Importing settings from a QR saved on your device It allows us to configure the following: List of keys for all settings Main Menu Making your own QR code Map settings are included on the :menuselection:`User Interface` settings page. Mapping ODK Collect's main menu contains the following options: Phone number QR Code QR Code or the Quick Response Code is a two dimensional barcode. QR codes can be used to configure Collect on many devices. The QR image presented contains all of your current General and Admin settings, including admin and server passwords. When this QR code is scanned from the ODK Collect app on another device, these settings are imported. QR code is a JSON object with a structure as shown below: QR code only contains settings whose values are not the default values because of the constraints on the amount of data a QR code can hold. SIM serial number Saving QR code locally See :doc:`collect-connect` for more details. Server Settings Set :guilabel:`Constraint processing` to validate upon forward swipe in the Form Management settings Settings are exported and saved so that they can be loaded to other devices. When you save external settings, they are saved to :file:`/sdcard/odk/settings/collect.settings`. You can load external settings from this location to other devices as well. Settings are saved to and loaded from different locations to avoid deleting the saved settings. Sharing QR code Since the QR code may contain the admin and server passwords without encryption, you should be careful about how you share it. It is advised to not send it through an external application but through *bluetooth*, *MMS* or any other such service that doesn't allow the third party to access the data. Subscriber ID The JSON object isn't encrypted but is compressed using `zlib <http://www.zlib.net/manual.html>`_ before encoding into QRCode. Therefore the creation process can be summarized as follows: The QR code used for settings-import contains the admin and server passwords *in plain text*. To remove them from the code, :gesture:`tap` the warning on the QR code screen. The subkeys in the general key can be a part of the admin key too. This section allows the admin to hide menu items and settings from the user. It contains the following options: Usage data Usage data is anonymized. User Access Control Settings User Interface Settings User and Device Identity Settings User-defined Username When enabled, ODK Collect sends usage and error data back to the ODK development team, which helps us improve the application. When you click on the :guilabel:`Import/Export Settings`, you see a QR Code and a few options. When you enable the moving backwards option, you have to configure the other changed settings since they are not automatically changed back. When you uncheck this option, a message will be displayed which asks you to configure following settings: Write a JSON object containing the changed settings with a structure as shown above. You can click on the |share| icon to share the QR code as an image. When you click on it, it displays a list of applications and services like *whatsapp*, *facebook*, *hangouts*, *bluetooth*, *MMS* to name a few, which can be used to share the QR code. This is useful when there are several different data collection sites and all devices have to be configured in the same way, in which case the QR code can be shared from one reference device. You can edit the following: You can go to :menuselection:`⋮ --> Save settings to disk` to save the QR code. You can import settings from a QR code saved on your device by clicking on :guilabel:`Select Code from SD Card` option. You cannot edit these: 