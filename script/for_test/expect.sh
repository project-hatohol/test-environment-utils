# Expect values for Host and Hostgroup
EXPECT_2='{"jsonrpc":"2.0","result":[{"hosts":[{"groups":[{"groupid":"6"}],"hostid":"10085"},{"groups":[{"groupid":"6"}],"hostid":"10086"},{"groups":[{"groupid":"6"},{"groupid":"7"}],"hostid":"10087"},{"groups":[{"groupid":"6"},{"groupid":"7"}],"hostid":"10088"}],"groupid":"6","name":"GroupA","internal":"0"},{"hosts":[{"groups":[{"groupid":"6"},{"groupid":"7"}],"hostid":"10087"},{"groups":[{"groupid":"6"},{"groupid":"7"}],"hostid":"10088"}],"groupid":"7","name":"GroupB","internal":"0"}],"id":1}'
EXPECT_6='{"jsonrpc":"2.0","result":[{"hosts":[{"groups":[{"groupid":"6"}],"hostid":"10049"},{"groups":[{"groupid":"6"}],"hostid":"10050"},{"groups":[{"groupid":"6"},{"groupid":"7"}],"hostid":"10051"},{"groups":[{"groupid":"6"},{"groupid":"7"}],"hostid":"10052"}],"groupid":"6","name":"GroupA","internal":"0"},{"hosts":[{"groups":[{"groupid":"6"},{"groupid":"7"}],"hostid":"10051"},{"groups":[{"groupid":"6"},{"groupid":"7"}],"hostid":"10052"}],"groupid":"7","name":"GroupB","internal":"0"}],"id":1}'
EXPECT_7='{"jsonrpc":"2.0","result":[{"groupid":"8","name":"GroupA","internal":"0","flags":"0","hosts":[{"hostid":"10105"},{"hostid":"10106"},{"hostid":"10107"},{"hostid":"10108"}]},{"groupid":"9","name":"GroupB","internal":"0","flags":"0","hosts":[{"hostid":"10107"},{"hostid":"10108"}]}],"id":1}'

# Expect values for Trigger and Item.
EXPECT_1_TRIGGER='{"jsonrpc":"2.0","result":[{"triggerid":"13592","expression":"{13021}<0","description":"{HOST.NAME}\u304c\u518d\u8d77\u52d5\u3057\u307e\u3057\u305f","url":"","status":"0","value":"0","priority":"1","lastchange":"1400140114","comments":"","error":"Trigger just added. No status update so far.","templateid":"0","type":"0","value_flags":"1","flags":"0","hostid":"10089","hosts":[{"hostid":"10089"}]}],"id":1}'
EXPECT_1_ITEM='{"jsonrpc":"2.0","result":[{"itemid":"23531","type":"0","snmp_community":"","snmp_oid":"","hostid":"10089","name":"$1\u306e\u30c1\u30a7\u30c3\u30af\u30b5\u30e0","key_":"vfs.file.cksum[\/etc\/passwd]","delay":"3600","history":"7","trends":"365","lastvalue":"0","lastclock":"0","prevvalue":"0","status":"0","value_type":"3","trapper_hosts":"","units":"","multiplier":"0","delta":"0","prevorgvalue":"0","snmpv3_securityname":"","snmpv3_securitylevel":"0","snmpv3_authpassphrase":"","snmpv3_privpassphrase":"","formula":"1","error":"","lastlogsize":"0","logtimefmt":"","templateid":"0","valuemapid":"0","delay_flex":"","params":"","ipmi_sensor":"","data_type":"0","authtype":"0","username":"","password":"","publickey":"","privatekey":"","mtime":"0","lastns":"0","flags":"0","filter":"","interfaceid":"0","port":"","description":"","inventory_link":"0","lifetime":"30"}],"id":1}'
EXPECT_4_TRIGGER='{"jsonrpc":"2.0","result":[{"triggerid":"10016","expression":"{10199}>0","description":"\/etc\/passwd has been changed on {HOST.NAME}","url":"","status":"0","value":"0","priority":"2","lastchange":"0","comments":"","error":"","templateid":"0","type":"0","value_flags":"0","flags":"0","hostid":"10001","hosts":[{"hostid":"10001"}]}],"id":1}'
EXPECT_4_ITEM='{"jsonrpc":"2.0","result":[{"itemid":"22181","type":"0","snmp_community":"","snmp_oid":"","hostid":"10001","name":"Available memory","key_":"vm.memory.size[available]","delay":"60","history":"7","trends":"365","lastvalue":"0","lastclock":"0","prevvalue":"0","status":"0","value_type":"3","trapper_hosts":"","units":"B","multiplier":"0","delta":"0","prevorgvalue":"0","snmpv3_securityname":"","snmpv3_securitylevel":"0","snmpv3_authpassphrase":"","snmpv3_privpassphrase":"","formula":"1","error":"","lastlogsize":"0","logtimefmt":"","templateid":"0","valuemapid":"0","delay_flex":"","params":"","ipmi_sensor":"","data_type":"0","authtype":"0","username":"","password":"","publickey":"","privatekey":"","mtime":"0","lastns":"0","flags":"0","filter":"","interfaceid":"0","port":"","description":"Available memory is defined as free+cached+buffers memory.","inventory_link":"0","lifetime":"0"}],"id":1}'
EXPECT_5_TRIGGER='{"jsonrpc":"2.0","result":[{"triggerid":"13591","expression":"{13020}>0","description":"\/etc\/ m\u1eadt kh\u1ea9u \u0111\u00e3 \u0111\u01b0\u1ee3c thay \u0111\u1ed5i tr\u00ean {HOST.NAME}","url":"","status":"0","value":"0","priority":"2","lastchange":"1400200948","comments":"","error":"Trigger just added. No status update so far.","templateid":"0","type":"0","value_flags":"1","flags":"0","hostid":"10089","hosts":[{"hostid":"10089"}]}],"id":1}'
EXPECT_5_ITEM='{"jsonrpc":"2.0","result":[{"itemid":"23532","type":"0","snmp_community":"","snmp_oid":"","hostid":"10089","name":"B\u1ed9 nh\u1edb kh\u1ea3 d\u1ee5ng","key_":"vm.memory.size[available]","delay":"60","history":"7","trends":"365","lastvalue":"0","lastclock":"0","prevvalue":"0","status":"0","value_type":"3","trapper_hosts":"","units":"B","multiplier":"0","delta":"0","prevorgvalue":"0","snmpv3_securityname":"","snmpv3_securitylevel":"0","snmpv3_authpassphrase":"","snmpv3_privpassphrase":"","formula":"1","error":"","lastlogsize":"0","logtimefmt":"","templateid":"0","valuemapid":"0","delay_flex":"","params":"","ipmi_sensor":"","data_type":"0","authtype":"0","username":"","password":"","publickey":"","privatekey":"","mtime":"0","lastns":"0","flags":"0","filter":"","interfaceid":"0","port":"","description":"Available memory is defined as free+cached+buffers memory.","inventory_link":"0","lifetime":"30"}],"id":1}'

# Expect values for hosts including template
EXPECT_1_HOST='{"jsonrpc":"2.0","result":[{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10085","proxy_hostid":"0","host":"Machine1_2","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine1_2"},{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10086","proxy_hostid":"0","host":"Machine1_3","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine1_3"},{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10087","proxy_hostid":"0","host":"Machine1_4","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine1_4"},{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10088","proxy_hostid":"0","host":"Machine1_5","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine1_5"},{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10084","proxy_hostid":"0","host":"Zabbix server1","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Zabbix server1"}],"id":1}'
EXPECT_4_HOST='{"jsonrpc":"2.0","result":[{"templates":[{"templateid":"10001","hostid":"10001"}],"maintenances":[],"hostid":"10084","proxy_hostid":"0","host":"Zabbix server4","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Zabbix server4"},{"templates":[{"templateid":"10001","hostid":"10001"}],"maintenances":[],"hostid":"10085","proxy_hostid":"0","host":"Machine4_2","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine4_2"},{"templates":[{"templateid":"10001","hostid":"10001"}],"maintenances":[],"hostid":"10086","proxy_hostid":"0","host":"Machine4_3","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine4_3"},{"templates":[{"templateid":"10001","hostid":"10001"}],"maintenances":[],"hostid":"10087","proxy_hostid":"0","host":"Machine4_4","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine4_4"},{"templates":[{"templateid":"10001","hostid":"10001"}],"maintenances":[],"hostid":"10088","proxy_hostid":"0","host":"Machine4_5","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine4_5"}],"id":1}'
EXPECT_5_HOST='{"jsonrpc":"2.0","result":[{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10088","proxy_hostid":"0","host":"Machine5_5","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine5_5"},{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10084","proxy_hostid":"0","host":"Zabbix server5","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Zabbix server5"},{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10087","proxy_hostid":"0","host":"Machine5_4","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine5_4"},{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10086","proxy_hostid":"0","host":"Machine5_3","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine5_3"},{"templates":[{"templateid":"10089","hostid":"10089"}],"maintenances":[],"hostid":"10085","proxy_hostid":"0","host":"Machine5_2","status":"0","disable_until":"0","error":"","available":"1","errors_from":"0","lastaccess":"0","ipmi_authtype":"-1","ipmi_privilege":"2","ipmi_username":"","ipmi_password":"","ipmi_disable_until":"0","ipmi_available":"0","snmp_disable_until":"0","snmp_available":"0","maintenanceid":"0","maintenance_status":"0","maintenance_type":"0","maintenance_from":"0","ipmi_errors_from":"0","snmp_errors_from":"0","ipmi_error":"","snmp_error":"","jmx_disable_until":"0","jmx_available":"0","jmx_errors_from":"0","jmx_error":"","name":"Machine5_2"}],"id":1}'