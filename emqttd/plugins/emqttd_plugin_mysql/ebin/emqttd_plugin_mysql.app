{application,emqttd_plugin_mysql,
             [{description,"emqttd Authentication/ACL with MySQL"},
              {vsn,"0.17.0"},
              {registered,[]},
              {applications,[kernel,stdlib,mysql,ecpool]},
              {mod,{emqttd_plugin_mysql,[]}},
              {env,[]},
              {modules,[emqttd_acl_mysql,emqttd_auth_mysql,emqttd_mysql_pool,
                        emqttd_plugin_mysql]}]}.
