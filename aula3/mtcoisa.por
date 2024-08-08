programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		cadeia nome, sobrenome
		inteiro idade, contador = 0
		real salario, maiorSalario = 0.0, menorSalario=1000000.0, totalFolhaPgto = 0.0
		caracter opcao = 'S'

		faca{
			escreva("Nome e sobrenome: ")
			leia(nome,sobrenome)
			escreva("Idade: ")
			leia(idade)
			escreva("Salário: ")
			leia(salario)
		enquanto(salario < 1500.0 ou salario > 10000.0){
				escreva("Digite novamente\n")
				leia(salario)
		}

	     se(salario>maiorSalario){
				maiorSalario=salario

		}
		se(salario<menorSalario){
				menorSalario=salario

		}

		totalFolhaPgto += salario
		contador++
		escreva("Deseja continuar (S(s)/N(n))")
		leia(opcao)

		}enquanto(opcao=='S' ou opcao=='s')

		escreva("Número de funcionarios: ",contador)
		escreva("Menor salário: ",menorSalario)
		escreva("Maior salário: ",maiorSalario)
		escreva("Total folha de pagamento: ",totalFolhaPgto)
		escreva("Media salarial: ", totalFolhaPgto/contador)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 122; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */