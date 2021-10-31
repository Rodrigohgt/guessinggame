echo "[Jogo avaliação]"

function ask {
	echo "adivinhe o número de arquivos no diretório atual :"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Muito baixo."
	else
		echo "Muito Alto."
	fi
	ask
done

echo "você acertou:"
echo "Parabéns" && ls -5