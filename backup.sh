#!bin/bash
#script de respaldo de BBDD
#para MediaStream


LOGFILE="/var/log/mongo_backup.log"

#Se crea Dump de la base de datos en la RAID 0 /mediastream
mongodump --db local -o /mediastream/BD/mongo_backup_`date "+%Y-%m-%d"`
echo "SE REALIZA DUMP DE BBDD con fecha `date "+%Y-%m-%d"`" >> ${LOGFILE}