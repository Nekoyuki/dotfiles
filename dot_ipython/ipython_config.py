# Configuration file for ipython.

c = get_config()

#------------------------------------------------------------------------------
# Neko
#------------------------------------------------------------------------------
c.AliasManager.user_aliases = [
        ('l', 'ls --color=tty -F'),
        ('c', 'clear'),
        ('d', 'diff'),
        ('g', 'grep'),
        ('m', 'more'),
        ('p', 'pwd'),
        ('v', 'vim'),
        ('vi', 'vim'),
        ('..', 'cd ..'),
        ('he', 'head'),
        ('ta', 'tail'),
        ]

c.NotebookApp.browser = u'/usr/bin/firefox %s'

