# Get Version of OS/FIRMWARE(hba card/nic/ilo)/VM version/DB version/APPS(webmethod/sap/websphere/ihs/mq/veritas/etc)

Note: 
      This will grab the information on the server and create a csv file  <br>
      and sent it to your email. <br> 
      
Instructions: 
      The get_version.yml is the main script.  The tag is get_version.  <br> 
      Information on the extra variables should be the following:  <br>
        - send_mail: true  #send email enable <br> 
        - email_to:        #your email <br> 
        - email_subject:   #subject of your email <br> 
        - email_group:     #your email group or your email <br> 
        - smtp_server:     #smtp server <br>
        - filename1:       # ex getversion <br>
        - ext: 			   # ex csv or txt or any <br>
        - tmp_folder:      # /tmp/getversion or /tmp/any  
        - log_file:        # hardcoded ex. log_hostname_20200121-1011.{{ext}}
        - path_log:        # /tmp/log_hostname_20200121-1011.{{ext}}
        - filename1:       # getversion or any
        - ext:             # csv or txt or any
        - tmp_folder:      # {{tmp_folder}}/get_version
        - tmp_prefix:      # {{tmp_folder}}/gv_ or {{tmp_folder}}/any
        - log_file_mail:   # hardcoded         
        
     Special DB about APP NAME (files/appnamedb.txt):
     
     SKOPE: ske-bccld1app01 ske-bccld1web01 podrbccls4app02 
     EPBS:  epbsbccld1app01                                 
     CIPG:  cpbccld1app02                                   

     You create this file with special naming of the APP name, make sure it's LOWERCASE and NO-FQDN
     otherwise it will just get the first 3-4 characters of the hostname. In the example above, if it
     encounter the server ske-bccld1app01, the APP name will be SKOPE not SKE.



## Note: This is not tested on Redhat 5.  Only redhat 6/7.  Also putting temp files both on user and /tmp is faster run.