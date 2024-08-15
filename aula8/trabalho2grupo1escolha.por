programa
{
	inteiro numerodeVagas[30]
				
	funcao inicio()
    {
        inteiro opcao   				
        para (inteiro i = 0; i < 30; i++) 
        {
            numerodeVagas[i] = 0
        }
		
        faca
        {
            escreva("\n----------------------------------\n") 
            escreva("1-Entrada de Veículo\n")
            escreva("2-Saída de Veículo\n")
            escreva("3-Listar vagas\n")
            escreva("4-Sair do programa\n")
            escreva("----------------------------------\n")
            escreva("Escolha uma opção: ")
            leia(opcao)
            
            escolha (opcao)
            {
                caso 1:
                    processarEntrada()
                    pare
                caso 2:
                    processarSaida()
                    pare
                caso 3:
                    listagemVagas()
                    pare
                caso 4:
                    escreva("\nPrograma encerrado.\n")
                    pare
                caso contrario:
                    escreva("\nOpção inexistente. Tente novamente.\n")
            }
        }
        enquanto (opcao != 4)
    }

	funcao processarEntrada()
    {		
        inteiro vagaSelecionada = solicitarVaga()
        se (vagaSelecionada != -1)
        {
            se (numerodeVagas[vagaSelecionada] == 0)
            {
                numerodeVagas[vagaSelecionada] = 1
                escreva("Veículo estacionado na vaga ", vagaSelecionada + 1, ".\n")
            }
            senao
            {
                escreva("Vaga ocupada. Escolha outra vaga.\n")
            }
        }
    }
	
	funcao processarSaida()
    {
        inteiro vagaSelecionada = solicitarVaga()
        se (vagaSelecionada != -1)
        {
            se (numerodeVagas[vagaSelecionada] == 1)
            {
                numerodeVagas[vagaSelecionada] = 0
                escreva("Vaga ", vagaSelecionada + 1, " liberada.\n")
            }
            senao
            {
                escreva("Vaga já está livre. Nenhum veículo para sair.\n")
            }
        }
    }

	funcao inteiro solicitarVaga()
    {
        inteiro vSelecionada
        escreva("Digite o número da vaga (1-30): ")
        leia(vSelecionada)
        
        se (vSelecionada > 0 e vSelecionada <= 30)
        {
            retorne vSelecionada - 1
        }
        senao
        {
            escreva("Número da vaga inválido. Escolha um número entre 1 e 30.\n")
            retorne -1
        }
    }

	funcao listagemVagas()
    {
        para(inteiro i = 0; i < 30; i++)
        {
            se (numerodeVagas[i] == 0) 
            {
                escreva("\nVaga ", i + 1, " disponível")
            }
            senao 
            {
                escreva("\nVaga ", i + 1, " ocupada")
            }
        }		
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1030; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */