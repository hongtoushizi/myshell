cd /usr/local/xunsearch/sdk/php
util/Indexer.php -p  /data/wwwroot/yixue.com/app/tizi.ini  --source=mysql://root:projectx2015@localhost/tizi_english  --sql="select id,body,analysis from question_text"
