if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/EvamariaTG/EvaMaria.git /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMariav2
fi
cd /EvaMaria
pip3 install -U -r requirements.txt
echo "heavy item loading takes time...."
python3 bot.py
