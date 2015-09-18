export SECRET_KEY_BASE=$(rake secret)
thin start -e production -p 4567
