if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Itsraj3600/cine.git /CINE3600FilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /CINE3600FilterBot
fi
cd /CINE3600FilterBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
