# Some commandline examples:

# This return information about an existing host
# $ ansible -i vagrant-inventory -m community.windows.win_iis_website -a "name='Default Web Site'" window
# host | success >> {
#     "changed": false,
#     "site": {
#         "ApplicationPool": "DefaultAppPool",
#         "Bindings": [
#             "*:80:"
#         ],
#         "ID": 1,
#         "Name": "Default Web Site",
#         "PhysicalPath": "%SystemDrive%\\inetpub\\wwwroot",
#         "State": "Stopped"
#     }
# }

# This stops an existing site.
# $ ansible -i hosts -m community.windows.win_iis_website -a "name='Default Web Site' state=stopped" host

# This creates a new site.
# $ ansible -i hosts -m community.windows.win_iis_website -a "name=acme physical_path=C:\\sites\\acme" host

# Change logfile.
# $ ansible -i hosts -m community.windows.win_iis_website -a "name=acme physical_path=C:\\sites\\acme" host
