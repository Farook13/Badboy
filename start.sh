if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/NithinLiza/MoviesWorld.git /MoviesWorld
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MoviesWorld
fi
cd /MoviesWorld
pip3 install -U -r requirements.txt
echo "Starting MoviesWorld...."
python3 bot.py
