��    4      �              \  H   ]  F   �  X   �  P   F  L   �  =   �      "  �   C  f     n   o  �   �  �   u       (   "  �   K  o   �  �   ^	  *   
  �   =
     (  l   6  �   �  V   �  [  �  S   N    �  P  �        �  !  �       �  �   �  B   ,  �   o  #   �          /  ;   J  _   �  G   �     .     N  ]  c  0   �  -   �           7  '  U  �  }  p     p   �  Q  �  H   K   F   �   X   �   P   4!  L   �!  =   �!      "  �   1"  f   �"  n   ]#  �   �#  �   c$     �$  (   %  �   9%  o   �%  �   L&  *    '  �   +'     (  l   $(  �   �(  V   �)  [  �)  S   <,    �,  P  �-     �.  �  0  �   �1    �2  �   �3  B   4  �   ]4  #   �4     5     5  ;   85  _   t5  G   �5     6     <6  ]  Q6  0   �7  -   �7     8     %8  '  C8  �  k9  p   ;  p   v;   **remote_host** indicates a remote server where you want to take backup. :doc:`Upgrade to the latest version of Aggregate <aggregate-upgrade>`. :option:`-d database` or :option:`--database=database` specifies database to connect to. :option:`-h hostname` or :option:`--host=hostname` specifies host to connect to. :option:`-p portnr` or :option:`--port=portnr` specifies port to connect to. :option:`-u user` or :option:`--user=user` specifies user id. A backup form will be displayed. A backup name is supplied and it includes a datestamp. You must change this value if you make more than one backup per day because a backup is not made if a backup of the same name already exists. A job status page is displayed. Click on :guilabel:`Back to Datastore Admin` to see the backup status. A job status page is displayed. Click on :guilabel:`Back to Datastore Admin` to see the status of the restore. After the backup is complete, if you disabled Cloud Datastore writes, re-enable them by going to Admin page and clicking on :guilabel:`Enable writes`. After the restore is complete, if you disabled Cloud Datastore writes, re-enable them by going to Admin page and clicking on :guilabel:`Enable writes`. Backing Up Aggregate Backup and recovery on Google App Engine Buckets are containers where your backup will be stored. You can also `create buckets <https://cloud.google.com/storage/docs/creating-buckets>`_ for your project. Choose the project id for your ODK Aggregate server by clicking on the project dropdown in the top left corner. Click on :guilabel:`Info` to get more information about the backup. On the info page, click :guilabel:`Back to Datastore Admin` to return to the main Cloud Datastore Admin screen. Click on :guilabel:`Open Datastore Admin`. Click on the menu icon (three horizontal bars) to the left of :guilabel:`Google Cloud Platform` in the upper left side of the screen and then select :guilabel:`Datastore` from the menu. Click on :menuselection:`Admin` in the dropdown. Create backup Creation of the dump respects your credentials, which means you only can dump the tables you have access to. Disable Cloud Datastore writes for your application. It's normally a good idea to do this to avoid conflicts between the restore and any new data written to Cloud Datastore. To disable writes, click on :guilabel:`Disable writes` on the Admin page. Enable Cloud Datastore Admin access by clicking on :guilabel:`Enable Datastore Admin`. Finally, restore it from MySQL dump. An SQL dump of a database is a common method to safely store away a snapshot of the database for archival purposes or to migrate data between database instances, e.g. between two major system releases. The content of a SQL dump is a large collection of SQL commands in ASCII. Running the script will recreate the database in the same state as it was when the dump was created. The primary tool to consider for making an ASCII dump is `mysqldump <https://dev.mysql.com/doc/mysql-backup-excerpt/5.7/en/using-mysqldump.html>`_, which includes a wide variety of options. Go to the Admin page as described in the :ref:`creation of backup <create-backup>`. Google has new beta service for `exporting and importing <https://cloud.google.com/datastore/docs/export-import-entities>`_. Only Cloud Platform projects with `billable accounts <https://cloud.google.com/support/billing/>`_ can use the export and import functionality. If you back up your data using Google Cloud Storage, you can restore backups to applications other than the application used to create the backup. To restore backup data from a source application to a target application, see this `guide <https://cloud.google.com/appengine/docs/standard/python/console/datastore-backing-up-restoring>`_. In the advisory page that is displayed, notice the list of entities with checkboxes. By default, all of the entities will be restored. Uncheck the checkbox next to each entity that you don't want to restore. Click on :guilabel:`Restore` at the bottom of the page to start the restoration. In the advisory page, notice that the default queue, with its pre-configured performance settings, is used for the restore job. Change this to another queue that you have configured differently if you need different queue performance characteristics, making sure the queue chosen does not have any target specified in **queue.yaml** other than **ah-builtin-python-bundle**. To know more about queues, see `this <https://cloud.google.com/appengine/docs/standard/java/taskqueue/>`_. In the bucket name box, enter *your-project-id.appspot.com*. You can alternatively preface the bucket name with **/gs/**, for example, /gs/[BUCKET_NAME]. In the list of available backups, select the backup that you want to restore from and click on :guilabel:`Restore`. You can click on :guilabel:`Info` to get more information about the backup. To delete a backup, select the backup and click on :guilabel:`Delete`. It is recommended to disable writes during creation of backup. To disable writes, click on :guilabel:`Disable writes` on the Admin page. Now click on :guilabel:`Backup Entities` to start the backup jobs. Open a browser to  `Google Cloud Platform <https://cloud.google.com/>`_ and click on :guilabel:`Console` in the top right corner. Recovering database from MySQL dump Recovering from Briefcase Restoring data from Backup Select Google Cloud Storage as the backup storage location. Select the entity kinds that you wish to back up and then click on :guilabel:`Backup Entities`. Sign in with a Gmail account which you used for Aggregate installation. Some of the useful options are: Stop running Tomcat. The default queue is used for the backup job; you can use this in most cases. If you use a non-default queue for backup/restore, you can only specify the target **ah-builtin-python-bundle** in **queue.yaml**. You cannot use any other targets. To know more about queues, see `this <https://cloud.google.com/appengine/docs/standard/java/taskqueue/>`_. Then, click on :guilabel:`Open Datastore Admin`. To copy a database from one server to another To restore a database: To take a backup of database: Use :doc:`ODK Briefcase <briefcase-guide>` to back up all forms and submissions on Aggregate. You can :ref:`pull forms from your Aggregate server <pull-from-aggregate>` into your local machine using Briefcase. In particular, Briefcase's :ref:`command line interface <cli-use>` makes this easier. When you abort a backup job, App Engine attempts to delete backup data that has been saved up to that point. However, in some cases, some files can remain after the abort. You can locate these files in the location you chose for your backups in Google Cloud Storage and safely delete them after the abort completes. The names of such files start with the following pattern: **datastore_backup_[BUCKET_NAME]**. You can abort a backup by selecting a backup from the list of pending backups and clicking on :guilabel:`Abort`. Your Aggregate server may become unstable when you disable writes. It will be fine when you enable writes again. Project-Id-Version: Open Data Kit 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-09 19:25+0530
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 **remote_host** indicates a remote server where you want to take backup. :doc:`Upgrade to the latest version of Aggregate <aggregate-upgrade>`. :option:`-d database` or :option:`--database=database` specifies database to connect to. :option:`-h hostname` or :option:`--host=hostname` specifies host to connect to. :option:`-p portnr` or :option:`--port=portnr` specifies port to connect to. :option:`-u user` or :option:`--user=user` specifies user id. A backup form will be displayed. A backup name is supplied and it includes a datestamp. You must change this value if you make more than one backup per day because a backup is not made if a backup of the same name already exists. A job status page is displayed. Click on :guilabel:`Back to Datastore Admin` to see the backup status. A job status page is displayed. Click on :guilabel:`Back to Datastore Admin` to see the status of the restore. After the backup is complete, if you disabled Cloud Datastore writes, re-enable them by going to Admin page and clicking on :guilabel:`Enable writes`. After the restore is complete, if you disabled Cloud Datastore writes, re-enable them by going to Admin page and clicking on :guilabel:`Enable writes`. Backing Up Aggregate Backup and recovery on Google App Engine Buckets are containers where your backup will be stored. You can also `create buckets <https://cloud.google.com/storage/docs/creating-buckets>`_ for your project. Choose the project id for your ODK Aggregate server by clicking on the project dropdown in the top left corner. Click on :guilabel:`Info` to get more information about the backup. On the info page, click :guilabel:`Back to Datastore Admin` to return to the main Cloud Datastore Admin screen. Click on :guilabel:`Open Datastore Admin`. Click on the menu icon (three horizontal bars) to the left of :guilabel:`Google Cloud Platform` in the upper left side of the screen and then select :guilabel:`Datastore` from the menu. Click on :menuselection:`Admin` in the dropdown. Create backup Creation of the dump respects your credentials, which means you only can dump the tables you have access to. Disable Cloud Datastore writes for your application. It's normally a good idea to do this to avoid conflicts between the restore and any new data written to Cloud Datastore. To disable writes, click on :guilabel:`Disable writes` on the Admin page. Enable Cloud Datastore Admin access by clicking on :guilabel:`Enable Datastore Admin`. Finally, restore it from MySQL dump. An SQL dump of a database is a common method to safely store away a snapshot of the database for archival purposes or to migrate data between database instances, e.g. between two major system releases. The content of a SQL dump is a large collection of SQL commands in ASCII. Running the script will recreate the database in the same state as it was when the dump was created. The primary tool to consider for making an ASCII dump is `mysqldump <https://dev.mysql.com/doc/mysql-backup-excerpt/5.7/en/using-mysqldump.html>`_, which includes a wide variety of options. Go to the Admin page as described in the :ref:`creation of backup <create-backup>`. Google has new beta service for `exporting and importing <https://cloud.google.com/datastore/docs/export-import-entities>`_. Only Cloud Platform projects with `billable accounts <https://cloud.google.com/support/billing/>`_ can use the export and import functionality. If you back up your data using Google Cloud Storage, you can restore backups to applications other than the application used to create the backup. To restore backup data from a source application to a target application, see this `guide <https://cloud.google.com/appengine/docs/standard/python/console/datastore-backing-up-restoring>`_. In the advisory page that is displayed, notice the list of entities with checkboxes. By default, all of the entities will be restored. Uncheck the checkbox next to each entity that you don't want to restore. Click on :guilabel:`Restore` at the bottom of the page to start the restoration. In the advisory page, notice that the default queue, with its pre-configured performance settings, is used for the restore job. Change this to another queue that you have configured differently if you need different queue performance characteristics, making sure the queue chosen does not have any target specified in **queue.yaml** other than **ah-builtin-python-bundle**. To know more about queues, see `this <https://cloud.google.com/appengine/docs/standard/java/taskqueue/>`_. In the bucket name box, enter *your-project-id.appspot.com*. You can alternatively preface the bucket name with **/gs/**, for example, /gs/[BUCKET_NAME]. In the list of available backups, select the backup that you want to restore from and click on :guilabel:`Restore`. You can click on :guilabel:`Info` to get more information about the backup. To delete a backup, select the backup and click on :guilabel:`Delete`. It is recommended to disable writes during creation of backup. To disable writes, click on :guilabel:`Disable writes` on the Admin page. Now click on :guilabel:`Backup Entities` to start the backup jobs. Open a browser to  `Google Cloud Platform <https://cloud.google.com/>`_ and click on :guilabel:`Console` in the top right corner. Recovering database from MySQL dump Recovering from Briefcase Restoring data from Backup Select Google Cloud Storage as the backup storage location. Select the entity kinds that you wish to back up and then click on :guilabel:`Backup Entities`. Sign in with a Gmail account which you used for Aggregate installation. Some of the useful options are: Stop running Tomcat. The default queue is used for the backup job; you can use this in most cases. If you use a non-default queue for backup/restore, you can only specify the target **ah-builtin-python-bundle** in **queue.yaml**. You cannot use any other targets. To know more about queues, see `this <https://cloud.google.com/appengine/docs/standard/java/taskqueue/>`_. Then, click on :guilabel:`Open Datastore Admin`. To copy a database from one server to another To restore a database: To take a backup of database: Use :doc:`ODK Briefcase <briefcase-guide>` to back up all forms and submissions on Aggregate. You can :ref:`pull forms from your Aggregate server <pull-from-aggregate>` into your local machine using Briefcase. In particular, Briefcase's :ref:`command line interface <cli-use>` makes this easier. When you abort a backup job, App Engine attempts to delete backup data that has been saved up to that point. However, in some cases, some files can remain after the abort. You can locate these files in the location you chose for your backups in Google Cloud Storage and safely delete them after the abort completes. The names of such files start with the following pattern: **datastore_backup_[BUCKET_NAME]**. You can abort a backup by selecting a backup from the list of pending backups and clicking on :guilabel:`Abort`. Your Aggregate server may become unstable when you disable writes. It will be fine when you enable writes again. 