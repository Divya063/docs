��          �               �  �   �     U  \   u  0   �  (     �   ,  8   �  �   �  6   �  (   �  1   �  #     &   C  #   j  4   �  L   �  R     �   c  K   �  )   F     p  &   �  Q  �  �   �     �	  \   �	  0   D
  (   u
  �   �
  8   )  �   b  6   �  (   6  1   _  #   �  &   �  #   �  4      L   5  R   �  �   �  K   l  )   �     �  &   �   :doc:`collect-intro` supports several intents which allow it to be launched by external applications. You can open a specific form or lists of empty forms, saved forms, finalized forms or sent forms. :doc:`launch-apps-from-collect` An Intent is a messaging object you can use to request an action from another app component. Create a new intent using an appropriate action. For an instance, change the intent type: For more details on intents, you can refer to `these Android docs <https://developer.android.com/guide/components/intents-filters.html>`_. Getting the URI of a form or instance chosen by the user If the URI of a form or instance is known, it can be viewed or edited. For example, a URI received in ``onActivityResult()`` as described above can be used. Launching Collect activities from external application Launching ODK Collect from External Apps Launching the form list or instance list activity Set the type of the created intent. Similarly for an instance of the form: Start an activity using the intent. The same thing can be done with a specific instance. This displays a list of forms and allows the user to select one and fill it. This displays a list of saved forms and allows the user to select one and edit it. This section describes how to launch ODK Collect and open its activities from an external app. The code samples go in your custom Android application. To get the result, override ``onActivityResultMethod`` in the followig way: To start one of ODK Collect's activities: Understanding Intents Using a URI to edit a form or instance Project-Id-Version: Open Data Kit 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-09 19:25+0530
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 :doc:`collect-intro` supports several intents which allow it to be launched by external applications. You can open a specific form or lists of empty forms, saved forms, finalized forms or sent forms. :doc:`launch-apps-from-collect` An Intent is a messaging object you can use to request an action from another app component. Create a new intent using an appropriate action. For an instance, change the intent type: For more details on intents, you can refer to `these Android docs <https://developer.android.com/guide/components/intents-filters.html>`_. Getting the URI of a form or instance chosen by the user If the URI of a form or instance is known, it can be viewed or edited. For example, a URI received in ``onActivityResult()`` as described above can be used. Launching Collect activities from external application Launching ODK Collect from External Apps Launching the form list or instance list activity Set the type of the created intent. Similarly for an instance of the form: Start an activity using the intent. The same thing can be done with a specific instance. This displays a list of forms and allows the user to select one and fill it. This displays a list of saved forms and allows the user to select one and edit it. This section describes how to launch ODK Collect and open its activities from an external app. The code samples go in your custom Android application. To get the result, override ``onActivityResultMethod`` in the followig way: To start one of ODK Collect's activities: Understanding Intents Using a URI to edit a form or instance 