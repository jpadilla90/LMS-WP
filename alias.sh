## Test del subsistema de alias para poder automatizar comandos adicionales de wordpress. [experimental, no en uso]

# Activamos la expansión de generar alias para bash, normalmente desactivada
shopt -s expand_aliases

# Test de funcionamiento de alias
alias testme="echo It Worked"
alias
testme