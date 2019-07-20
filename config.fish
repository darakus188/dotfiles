set fish_greeting ""

if [ -e /usr/bin/nvim ]
    abbr --add vim nvim    
end

if [ -e /usr/bin/exa ] 
    abbr --add l exa
    abbr --add ls exa
    abbr --add ll 'exa -l'
    abbr --add lll 'exa -la'
else
    abbr --add l ls
    abbr --add ll 'ls -l'
    abbr --add lll 'ls -al'
end
