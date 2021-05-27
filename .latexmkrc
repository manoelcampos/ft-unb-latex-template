# Substitui o comando makeindex padrão utilizado pelo latexmk,
# pois o template tem um índice contendo uma lista de siglas que precisa
# ser compilada de uma maneira diferente.
$makeindex = 'FILE=%S; FILE=${FILE%.*}; makeindex "$FILE"; makeindex "$FILE.nlo" -s nomencl.ist -o "$FILE.nls"';
