programa
{
	
	funcao inicio()
	{
		inteiro numero
		escreva("Digite o numero: ")
		leia(numero)
		escreva("Resultado: " + somarNumerosAnt(numero))

	}

	funcao inteiro somarNumerosAnt (inteiro numero){
	inteiro resultado

	se(numero==1){
		retorne 1
	}senao{
		resultado = somarNumerosAnt(numero-1)+numero
		retorne resultado
	}
	}
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 295; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 6, 10, 6}-{numero, 13, 41, 6}-{resultado, 14, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */