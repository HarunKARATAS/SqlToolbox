SELECT
    s.name AS 'EventNotificationName'
    , p.name AS 'PrincipalName'
    , 'DROP EVENT NOTIFICATION '+s.name+' ON SERVER;' AS 'DropEventNotificationQuery',
	s.*,p.*
FROM sys.server_event_notifications s
LEFT JOIN sys.server_principals p
ON s.principal_id = p.principal_id
WHERE p.name = 'Domain\UserName';
