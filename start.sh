if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Itsraj3600/cine.git /CINE3600FlterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /CINE3600FlterBot
fi
cd /CINE3600FlterBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
