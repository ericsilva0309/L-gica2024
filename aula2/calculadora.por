programa
{
	
	funcao inicio()
	{

	real resultado, numero1, numero2
	inteiro operacao
	
     escreva("Digite o primeiro número: ")
     leia(numero1)
    
     escreva("Digite o segundo número: ")
     leia(numero2)
    
     escreva("Escolha a operação:\n")
     escreva("1 - Soma\n")
     escreva("2 - Subtração\n")
     escreva("3 - Divisão\n")
     escreva("4 - Multiplicação\n")
     escreva("Digite a opção desejada: ")
     leia(operacao)
    
     escolha(operacao){

			 caso 1: resultado = numero1 + numero2
			 escreva("Resultado da soma: ", resultado)
			 pare
			 caso 2: resultado = numero1 - numero2
			 escreva("Resultado da subtração: ", resultado)
			 caso 3: resultado = numero1 / numero2
			 escreva("Resultado da divisão: ", resultado)
			 pare
			 caso 4: resultado = numero1 * numero2
			 escreva("Resultado da multiplicação: ", resultado)
			 pare
			 caso contrario: escreva("Opção não identificada.")
			 pare
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 911; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */