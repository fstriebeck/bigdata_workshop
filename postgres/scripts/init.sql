CREATE SCHEMA workshop;

DROP TABLE IF EXISTS stocks;
CREATE TABLE stocks (
  full_date timestamptz NOT NULL,
  symbol varchar(10) NOT NULL,
  category varchar(64) NOT NULL,
  open double precision	NOT NULL,
  high double precision	NOT NULL,
  low double precision	NOT NULL,
  close double precision	NOT NULL,
  MA20 double precision	NOT NULL,
  MA50 double precision	NOT NULL,
  MA100 double precision	NOT NULL,
  PRIMARY KEY(full_date, symbol)
);


DROP TABLE IF EXISTS time;
CREATE TABLE time(
Date TIMESTAMP,
Day varchar(10),
Week smallint , 
Quarter smallint, 
Year smallint, 
Year_half smallint,
PRIMARY KEY(date));



DROP TABLE IF EXISTS market;
CREATE TABLE market(
date TIMESTAMP,
sp double precision,
benchmark_return double precision, 
cumulative_return double precision,
PRIMARY KEY(date));


DROP TABLE IF EXISTS all_stocks;
CREATE TABLE all_stocks(
date TIMESTAMP,
stok_price double precision,
return double precision, 
cumulative_return double precision,
ticker varchar(10),
PRIMARY KEY(date,ticker));



DROP TABLE IF EXISTS all_betas;
CREATE TABLE all_betas(
ticker varchar(10),
beta TIMESTAMP,
avg_return double precision,
volatility double precision, 
PRIMARY KEY(ticker));



DROP TABLE IF EXISTS exports;
CREATE TABLE exports;(
pais varchar(10),
alimentos_consumo double precision,
combustibles double precision,
capital_tranporte double precision,
servicios double precision,
kmeans smallint,  
PRIMARY KEY(pais));


DROP TABLE IF EXISTS exports_transposed;
CREATE TABLE exports_transposed;(
pais varchar(10),
kmeans smallint, 
etric varchar(20),
value double precision,
PRIMARY KEY(pais));
