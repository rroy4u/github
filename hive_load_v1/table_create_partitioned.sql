create table weblogs_partitioned(
	client_ip	STRING,
	full_request_date	STRING,
	day	STRING,
	month	STRING,
	month_num	INT,
	year	STRING,
	hour	STRING,
	minute	STRING,
	timezone	STRING,
	http_verb	STRING,
	uri	STRING,
	http_status_code	STRING,
	bytes_transferred	STRING,
	referrer	STRING,
	user_agent	STRING)
        PARTITIONED BY ( y INT, m INT, d INT )
	ROW FORMAT DELIMITED FIELDS terminated by '\t';

