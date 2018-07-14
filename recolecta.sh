#!bin/bash
#script solicitado para la prueba interna
#Para MediaStream
LOGFILE="/mediastream/recolecta_info.log"
echo "---------------------------------" >> ${LOGFILE}
echo "el tamaño de la RAID 0 es $(df -h |grep /dev/md0)" >> ${LOGFILE}
echo "el hash del archivo /var/log/auth.log es : $(sha1sum /var/log/auth.log)" >> ${LOGFILE}
echo "Ultimas 3 lineas del syslog \n" >> ${LOGFILE}
echo "$(tail -n3 /var/log/syslog)" >> ${LOGFILE}
echo "---------------------------------  \n" >> ${LOGFILE}