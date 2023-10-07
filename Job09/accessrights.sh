csv= "/home/fatou/git_hub/shell-exe/Job09/Shell_Userlist.csv"
while IFS="," read -r id prenom nom mdp role;
do
echo "Id:$id Prenom:$Prenom Nom:$Nom Mdp:$Mdp Role:$Role"

username="$Prenom.$Nom"

sudo adduser --gecos "$username" --disabled-password --force-badname "$username"

   echo "$username:$Mdp" | sudo chpasswd
   sudo usermod -u "$id" "$username"

if [ $nrole = "Admin" ]; then
            sudo usermod -aG sudo $username
        else
            sudo usermod -aG users $username
fi

    echo "L'utilisateur $username a été créé avec succès."

done 
