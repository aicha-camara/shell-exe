nombre1=$1
nombre2=$3
operateur=$2

if [ "$operateur" = "+" ]
then
 resultat=$((nombre1 + nombre2))
echo "Le résultat de $nombre1 $operateur $nombre2 est : "$resultat

elif [ "$operateur" = "-" ]
then
  resultat=$((nombre1 - nombre2))
echo "Le résultat de $nombre1 $operateur $nombre2 est :" $resultat

elif [ "$operateur" = "/" ]
then
  resultat=$((nombre1 / nombre2))
echo "Le résultat de $nombre1 $operateur $nombre2 est :" $resultat

elif [ "$operateur" = "*" ]
then
  resultat=$((nombre1 * nombre2))
echo "Le résultat de $nombre1 $operateur $nombre2 est :" $resultat

fi
