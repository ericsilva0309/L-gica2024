/* 2) Preencher uma matriz[4][2] com valores iniciais e fazer 
uma rotina para o usuário ler um número e exibir uma mensagem 
se este número existe na matriz, se existir pedir ao usuário 
para preencher com outro valor. */

programa
{
	
	funcao inicio()
	{
		inteiro matriz[4][2]={{11,12},{21,22},{31,32},{41,42}}, numero=0
		
		escreva("Os números da matriz são: \n" )
		para(inteiro lin=0; lin<4; lin++){
				para(inteiro col=0; col<2; col++){
					escreva(matriz[lin][col]," ")
				}
		}
		
		escreva("\nEscolha um número:\n")
		leia(numero)
		limpa()
		
		
			para(inteiro lin=0; lin<4; lin++){
				para(inteiro col=0; col<2; col++){					
					se(numero==matriz[lin][col]){
						limpa()
						escreva("Este número existe na matriz.\n")
						escreva("\nDigite outro valor para substitui-lo:\n")
						leia(matriz[lin][col])
						
					}
										
				}				
			}
		escreva("Este número não existe na Matriz.\n")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 918; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 11, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */