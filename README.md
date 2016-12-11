# Pre-reqs

Get election tweets data as ```data/election_day_tweets.csv```

Make sure python3 and latest pip is installed:

```
pip install --upgrade pip
brew install python3
```

# Start virtual env

```
. ./init.sh
```

or 

```
virtualenv venv --python python3
pip install -r requirements.txt
```

# setup

install nltk stopwords:

```
$ python3
>>> import nltk
>>> nltk.download_shell()
```

and download ```stopwords```

# Running

```
jupyter notebook
```
