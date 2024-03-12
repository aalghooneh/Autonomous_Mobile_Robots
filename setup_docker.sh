sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update


sudo apt-get install -y ca-certificates curl gnupg lsb-release


KEYRINGS="/etc/apt/keyrings/docker.gpg"
SOURCELIST="/etc/apt/sources.list.d/docker.list"


if test -f "$KEYRINGS";then
        echo "........................................keyrings already created........................................"
else
        sudo mkdir -p /etc/apt/keyrings

        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

fi

if test -f "$SOURCELIST";then
        echo "........................................source list already added........................................"
else
        echo \
                "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
                $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

fi


echo "..................................keys and sources added........................................."

sudo apt-get update

echo "..................................successfuly updated............................................"

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin || sudo apt-get install docker-ce docker-ce-cli \
containerd.io  docker-compose

echo "..................................docker installed..............................................."

sudo docker run hello-world
