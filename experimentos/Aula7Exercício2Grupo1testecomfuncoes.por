programa
{
	funcao inicio()
	{
		inteiro opcao
		
		faca
		{
			escreva("Digite 1 para calcular o salário final, ou 0 para sair: ")
			leia(opcao)
			
			se (opcao == 1)
			{
				// Executa o processo de cálculo do salário
				processarCalculoSalario()
			}
			senao
			{
				se (opcao != 0)
				{
					escreva("\nOpção inválida! Tente novamente.\n")
				}
			}
		} enquanto (opcao != 0)
		
		escreva("\nPrograma encerrado.\n")
	}
	
	// Função para processar o cálculo do salário de um vendedor
	funcao processarCalculoSalario()
	{
		cadeia nomeVendedor
		real salarioFixo, valorVendasMes, percentualComissao, valorComissao, salarioFinal
		
		// Entrada de dados
		nomeVendedor = obterNomeVendedor()
		salarioFixo = obterSalarioFixo()
		valorVendasMes = obterValorVendasMes()
		percentualComissao = obterPercentualComissao()
		
		// Cálculo da comissão e do salário final
		valorComissao = calcularComissao(valorVendasMes, percentualComissao)
		salarioFinal = calcularSalarioFinal(salarioFixo, valorComissao)
		
		// Exibição dos resultados
		exibirResultados(nomeVendedor, salarioFixo, valorComissao, salarioFinal)
	}
	
	// Função para obter o nome do vendedor
	funcao cadeia obterNomeVendedor()
	{
		cadeia nome
		escreva("\nDigite o nome do vendedor: ")
		leia(nome)
		retorne nome
	}
	
	// Função para obter o salário fixo do vendedor
	funcao real obterSalarioFixo()
	{
		real salario
		faca
		{
			escreva("Digite o salário fixo: ")
			leia(salario)
			
			se (salario <= 0)
			{
				escreva("\nSalário deve ser maior que zero! Tente novamente.\n")
			}
		} enquanto (salario <= 0)
		
		retorne salario
	}
	
	// Função para obter o valor das vendas no mês
	funcao real obterValorVendasMes()
	{
		real valorVendas
		faca
		{
			escreva("Informe o valor das vendas deste mês: ")
			leia(valorVendas)
			
			se (valorVendas < 0)
			{
				escreva("\nO valor das vendas não pode ser negativo! Tente novamente.\n")
			}
		} enquanto (valorVendas < 0)
		
		retorne valorVendas
	}
	
	// Função para obter o percentual de comissão
	funcao real obterPercentualComissao()
	{
		real percentual
		faca
		{
			escreva("Digite o percentual de comissão: ")
			leia(percentual)
			
			se (percentual < 0)
			{
				escreva("\nO percentual de comissão não pode ser negativo! Tente novamente.\n")
			}
		} enquanto (percentual < 0)
		
		retorne percentual
	}
	
	// Função para calcular o valor da comissão
	funcao real calcularComissao(real valorVendas, real percentualComissao)
	{
		retorne valorVendas * percentualComissao / 100
	}
	
	// Função para calcular o salário final
	funcao real calcularSalarioFinal(real salarioFixo, real valorComissao)
	{
		retorne salarioFixo + valorComissao
	}
	
	// Função para exibir os resultados finais
	funcao exibirResultados(cadeia nomeVendedor, real salarioFixo, real valorComissao, real salarioFinal)
	{
		escreva("\n--- Resultados ---\n")
		escreva("Nome do Vendedor: ", nomeVendedor, "\n")
		escreva("Salário Fixo: R$ ", salarioFixo, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */