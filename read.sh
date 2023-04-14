
if [ $# -lt 2 ]
then
	echo "parameter error"
	exit
fi

cnt=0
until [ ! $cnt -lt 32 ]
do
	echo -n "$1 reg$cnt : "
	./phytool read $1/$2/$cnt
	cnt=`expr $cnt + 1`
done
