
while IFS="," read Id Prenom Nom Mdp Role
do
 echo "Id:$Id Premon:$Prenom Nom:$Nom Mpd:$Mpd Role:$Rôle"
done <Shell_Userlist.csv
sudo useradd -m -s /bin/bash -c "Compte utilisateur" -p "$mot_de_passe" "$id"
        echo "Utilisateur $id créé avec succès.
