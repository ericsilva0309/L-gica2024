programa
{
	inclua biblioteca Util
	// Vetores separados para consultas e internações
	cadeia dadosConsulta[2000][3]
	cadeia dadosInternacao[2000][4]
	inteiro totalConsultas = 0
	inteiro totalInternacoes = 0
	real faturamentoConsultas = 0
	real faturamentoInternacoes = 0
	inteiro quartosInternacao[20]
	cadeia ok

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
			escreva("\tHOSPITAL - XPTO")
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
		dadosConsulta[totalConsultas][0] = nome
		escreva("\nDigite o número do paciente: ")
		leia(numero)
		dadosConsulta[totalConsultas][1] = numero
		escreva("\n1 - Pediatria\n2 - Outros \nDigite a especialidade:")
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
		
		
		totalConsultas = totalConsultas + 1
		limpa()
		escreva("Carregando: [......")
		para (inteiro i = 0; i <= 5; i++)
        {
            escreva("...")
            Util.aguarde(350) // Espera 0.2 segundos para cada iteração
        }

        escreva("] 100%\n")
        escreva("Carregamento concluído!\n")
		escreva("Consulta cadastrada com sucesso!\n")
		escreva("Caso deseje adicionar outro paciente pressione ENTER, se desejar voltar para o menu digite 1:\n")
		leia(ok)
		se(ok==""){limpa()	consulta()}senao{limpa() menu()}
		
	}
	
	funcao internacao()
	{
		cadeia nome, numero
		inteiro quarto
		inteiro segundos=0
		escreva("\nDigite o nome do paciente: ")
		leia(nome)
		dadosInternacao[totalInternacoes][0] = nome
		
		escreva("\nDigite o número do paciente: ")
		leia(numero)
		dadosInternacao[totalInternacoes][1] = numero
		
		escreva("Digite o número do quarto (1-20): ")
		leia(quarto)
		dadosInternacao[totalInternacoes][3]="Q"+quarto
		limpa()
		escreva("Carregando: [......")
		para (inteiro i = 0; i <= 5; i++)
        {
            escreva("...")
            Util.aguarde(550) // Espera 0.2 segundos para cada iteração
        }

        escreva("] 100%\n")
        escreva("Carregamento concluído!\n")
		//escreva("Verificando se o quarto escolhido está disponível: ")
		
		
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
		escreva("Caso deseje adicionar outro paciente pressione ENTER, se desejar voltar para o menu digite 1:\n")		
		leia(ok)
		se(ok==""){limpa()	internacao()}senao{limpa()	menu()}
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
		escreva("\nCONSULTAS:\n")
		para(inteiro i=0; i < totalConsultas; i++){
		escreva(dadosConsulta[i][0],", ",dadosConsulta[i][1],", ",dadosConsulta[i][2],"\n")
		}
		escreva("\nINTERNAÇÕES:\n")
		para(inteiro i=0; i < totalInternacoes; i++){
		escreva(dadosInternacao[i][0],", ",dadosInternacao[i][1],", ",dadosInternacao[i][2],", ",dadosInternacao[i][3],"\n")
		}
		
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
 * @POSICAO-CURSOR = 3759; 
 * @DOBRAMENTO-CODIGO = [13];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {dadosConsulta, 5, 8, 13}-{dadosInternacao, 6, 8, 15};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */