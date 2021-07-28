#genero el nuevo sistema fisico...
pvcreate /dev/sdb

#buscamos el nombre del volume group a extender
#vgs

#extiendo el volume group con el disco generado...
vgextend debian10temp-vg /dev/sdb

#vgs

#busco el logical volume a extender
#lvs

#extiendo el volumen deseado con el 100% del espacio libre...
lvextend -l +100%FREE /dev/debian10temp-vg/root

#extiendo el sistema de archivos actual...
resize2fs /dev/debian10temp-vg/root
