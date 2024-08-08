programa
{
	
	funcao inicio()
	{
		
		inteiro nota1, nota2, media
		
		escreva("Digite a primeira nota: ")
          leia(nota1)
    
          escreva("Digite a segunda nota: ")
          leia(nota2)
    
          media = (nota1 + nota2) / 2
    
           se (media >= 7)
          escreva("Aluno aprovado com média ", media)
           senao se (media >= 5 e media < 7)
          escreva("Aluno em recuperação com média ", media)
           senao
          escreva("Aluno reprovado.\n média: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 467; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */