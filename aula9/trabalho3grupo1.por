programa
{
	// Vetores separados para consultas e internações
	cadeia dadosConsulta[2000][3]
	cadeia dadosInternacao[2000][4]
	inteiro totalConsultas = 0
	inteiro totalInternacoes = 0
	real faturamentoConsultas = 0
	real faturamentoInternacoes = 0
	inteiro quartosInternacao[20]

	funcao inicio()
	{       	
		para(inteiro i = 0; i < 20; i++) 
		{
			quartosInternacao[i] = 0
		}
		menu()
	}
	
	funcao menu()
	{
		inteiro opcao
		faca
		{
			escreva("\n----------------------------------\n") 
			escreva("1-Consulta Ambulatorial\n")
			escreva("2-Internação\n")
			escreva("3-Listar quartos\n")
			escreva("4-Faturamento\n")
			escreva("0-Sair do programa\n")
			escreva("----------------------------------\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			
			escolha (opcao)
			{
				caso 1:
					consulta()
					pare
				caso 2:
					internacao()
					pare
				caso 3:
					listagemVagas()
					pare
				caso 4:
					faturamento()
					pare
				caso 0:
					escreva("\nPrograma encerrado.\n")
					pare
				caso contrario:
					escreva("\nOpção inexistente. Tente novamente.\n")
			}
		}
		enquanto (opcao != 0)
	}

	funcao consulta()
	{
		cadeia nome, numero
		inteiro especialidade
		escreva("\nDigite o nome do paciente: ")
		leia(nome)
		escreva("\nDigite o número do paciente: ")
		leia(numero)
		escreva("Digite a especialidade:\n1 - Pediatria\n2 - Outros ")
		leia(especialidade)
		
		se(especialidade == 1)
		{
			dadosConsulta[totalConsultas][2] = "Pediatria"
			faturamentoConsultas = faturamentoConsultas + 150.00
		}
		senao
		{
			dadosConsulta[totalConsultas][2] = "Outra Especialidade"
			faturamentoConsultas = faturamentoConsultas + 120.00
		}
		
		dadosConsulta[totalConsultas][0] = nome
		dadosConsulta[totalConsultas][1] = numero
		totalConsultas = totalConsultas + 1
		escreva("Consulta cadastrada com sucesso!\n")
	}
	
	funcao internacao()
	{
		cadeia nome, numero
		inteiro quarto
		escreva("\nDigite o nome do paciente: ")
		leia(nome)
		dadosInternacao[totalInternacoes][0] = nome
		escreva("\nDigite o número do paciente: ")
		leia(numero)
		dadosInternacao[totalInternacoes][1] = numero
		
		escreva("Digite o número do quarto (1-20): ")
		leia(quarto)
		dadosInternacao[totalInternacoes][3] = "Q "+quarto
		
		
		se(quarto >= 1 e quarto <= 20)
		{
			se(quartosInternacao[quarto-1] == 0)
			{
				quartosInternacao[quarto-1] = 1
				
				
				dadosInternacao[totalInternacoes][2] = "Internação"
				totalInternacoes = totalInternacoes + 1
				faturamentoInternacoes = faturamentoInternacoes + 500.00
				escreva("Quarto reservado com sucesso!\n")
			}
			senao
			{
				escreva("Quarto Ocupado!\n")
			}
		}
		senao
		{
			escreva("Número do quarto inválido!\n")
		}
	}

	funcao listagemVagas()
	{
		para(inteiro i = 0; i < 20; i++)
		{
			se(quartosInternacao[i] == 0)
			{
				escreva("Quarto ", i+1, ": Desocupado\n")
			}
			senao
			{
				escreva("Quarto ", i+1, ": Ocupado\n")
			}
		}
	}

	funcao faturamento()
	{
		escreva("\nNúmero de Consultas: ", totalConsultas)
		escreva("\nNúmero de Internações: ", totalInternacoes)
		escreva("\nFaturamento de Consultas: R$ ", faturamentoConsultas)
		escreva("\nFaturamento de Internações: R$ ", faturamentoInternacoes)
		escreva("\nFaturamento Total: R$ ", faturamentoConsultas + faturamentoInternacoes, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {dadosConsulta, 4, 8, 13}-{dadosInternacao, 5, 8, 15};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */