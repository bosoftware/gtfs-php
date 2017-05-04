#!/bin/bash
curl http://transitfeeds.com/p/translink/21/latest/download -O temp.zip ;
unzip temp.zip;
rm temp.zip;
./mksql3db.sh  brisbane.db *.txt;
cat t.sql | sqlite3 brisbane.db;
