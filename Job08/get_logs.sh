utilisateur="fatou"
la_date=$(date +'%d-%m-%Y-%H:%M')
save="/home/fatou/git_hub/shell-exe/Job08/Backup"

nombre_connexions=$(last | grep "$utilisateur" | wc -l)

nom_fichier="$save/number_connection-$la_date"

echo "$nombre_connexions" > "$nom_fichier"
tar -cf "$save/number_connection-$la_date.tar" -C "$save" "number_connection-$la_date"

rm "$nom_fichier"

echo "Le nombre de connexions de $utilisateur a été enregistré"
