if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jikkubot32/great.git /great
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /great
fi
cd /great
pip3 install -U -r requirements.txt
echo "Starting BOT....🔥"
python3 bot.py
