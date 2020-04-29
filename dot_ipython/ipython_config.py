# Configuration file for ipython.

c = get_config()

#------------------------------------------------------------------------------
# Neko
#------------------------------------------------------------------------------
# c.TerminalInteractiveShell.editor = '/usr/bin/vim'
# c.NotebookApp.browser = u'/usr/bin/firefox %s'

c.AliasManager.user_aliases = [
        ('l', 'ls --color=tty -F'),
        ('c', 'clear'),
        ('d', 'diff'),
        ('g', 'grep --color-auto'),
        ('m', 'more'),
        ('t', 'tail'),
        ('p', 'pwd'),
        ('v', 'vim'),
        ('..', 'cd ..'),
        ('he', 'head'),
        ]

