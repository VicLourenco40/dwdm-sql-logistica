IF EXISTS (
	SELECT name
	FROM master.dbo.sysdatabases
	WHERE name = 'dwdm_sql_logistica'
)
DROP DATABASE dwdm_sql_logistica;

CREATE DATABASE dwdm_sql_logistica;
