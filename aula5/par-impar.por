programa
{
	
	funcao inicio()
	{
		inteiro numeros[86], soma=0, par=0, impar=0

		para(inteiro i=0; i < 8; i++){
			escreva("Número:")
			leia(numeros[i])

			soma = soma+numeros[i]

			se(numeros[i]%2 == 0){
				par++
			}senao{
				impar++
			}
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 58; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */