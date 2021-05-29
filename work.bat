oc cp C:\Users\TEJENDRARANA\Desktop\Rana\Study\GIT_Clones\php-quotes $(oc get pods --no-headers -o custom-columns=POD:.metadata.name -l app=quotesdb):/tmp

mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /tmp/quote.sql 