%% app generated at {2016,3,22} {16,3,47}
{application,esockd,
             [{description,"Erlang General Non-blocking TCP/SSL Server"},
              {vsn,"3.1"},
              {id,"esockd"},
              {modules,[esockd,esockd_acceptor,esockd_acceptor_sup,
                        esockd_access,esockd_app,esockd_connection,
                        esockd_connection_sup,esockd_gen,esockd_keepalive,
                        esockd_listener,esockd_listener_sup,esockd_net,
                        esockd_ratelimit,esockd_server,esockd_sup,
                        esockd_transport]},
              {registered,[]},
              {applications,[kernel,stdlib]},
              {included_applications,[]},
              {env,[{logger,{error_logger,info}}]},
              {maxT,infinity},
              {maxP,infinity},
              {mod,{esockd_app,[]}}]}.

