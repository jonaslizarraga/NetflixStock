drop table if exists NetflixStock

create table NetflixStock(

[Date] date primary key
,	[ClosePrice] float
,	[High]	float
,	[Low]		float
,	[Open]	float
,	[Volume]	bigint
)


create unique index date_index on Netflixstock (date)