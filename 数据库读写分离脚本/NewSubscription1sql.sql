-----------------开始: 要在发布服务器“DESKTOP-1210DEL”上运行的脚本-----------------
use [ORMExplore]
exec sp_addsubscription @publication = N'ORMExplorePublish', @subscriber = N'DESKTOP-1210DEL', @destination_db = N'ORMExploreSlave1', @subscription_type = N'Push', @sync_type = N'automatic', @article = N'all', @update_mode = N'read only', @subscriber_type = 0
exec sp_addpushsubscription_agent @publication = N'ORMExplorePublish', @subscriber = N'DESKTOP-1210DEL', @subscriber_db = N'ORMExploreSlave1', @job_login = null, @job_password = null, @subscriber_security_mode = 0, @subscriber_login = N'sa', @subscriber_password = null, @frequency_type = 64, @frequency_interval = 0, @frequency_relative_interval = 0, @frequency_recurrence_factor = 0, @frequency_subday = 0, @frequency_subday_interval = 0, @active_start_time_of_day = 0, @active_end_time_of_day = 235959, @active_start_date = 20210225, @active_end_date = 99991231, @enabled_for_syncmgr = N'False', @dts_package_location = N'Distributor'
GO
-----------------结束: 要在发布服务器“DESKTOP-1210DEL”上运行的脚本-----------------

