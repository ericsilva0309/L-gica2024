	/* 2) Escreva um programa que apresente um menu com as seguintes opções:
    Deverá ser criado um vetor com até cinquenta convidados.  
    Para inserir um novo convidado deverá ser verificado no vetor se a posição está vazia.
    Quando remover um convidado deverá ser atribuído vazio a posição do vetor.
    Pagamento: Para cada convidado deverá ser cobrado o valor de 120,00. 
    Exibir o total que deverá ser pago e quantidade     de convidados presentes. 
    Obs:  Criar funções para cada opção.
Menu de opções:
1 - inserir nome:
2 - listar convidados
3 - remover nome
4 - pagamento
0 - sair
Digite a opção:
*/

//Fiz um pouco diferente do resto do grupo pois ficamos testando versões e tentei achar uma mais otimizada
programa
{
	funcao inicio()
	{
		inteiro opcao, quantidade_convidados = 0, valorTotal = 0, vago = 50
		cadeia nome[50], enter
		logico confirmacao = verdadeiro
		
		// Inicializando todas as reservas como vagas
		para(inteiro i = 0; i < 50; i++) { nome[i] = "Vago" }
		
		faca {
			escreva("\n1 - Inserir nome")
			escreva("\n2 - Listar convidados")
			escreva("\n3 - Remover nome")
			escreva("\n4 - Pagamento")
			escreva("\n0 - Sair\n")
			escreva("\nDigite a opção: ")
			leia(opcao)
			limpa()

			se (vago == 0) { confirmacao = falso } // Sem vagas disponíveis
			
			escolha (opcao) { //Diferente deles eu preferi fazer com escolha pois achei mais facil de entender
				caso 1:
					limpa()
					se (confirmacao) {
						para(inteiro i = 0; i < 50; i++) {
							se (nome[i] == "Vago") {
								escreva("Reserva ", i, ". Escreva o seu nome: ")
								leia(nome[i])
								quantidade_convidados++
								vago--
								se (vago == 0) { confirmacao = falso }
								pare // Sai do loop após inserir o nome
							}
						}
					} senao {
						escreva("Sem mais vagas disponíveis, remova um nome antes de prosseguir.\n")
					}
					pare
				
				caso 2:
					limpa()
					escreva("\nA lista de convidados é esta:")
					para (inteiro i = 0; i < 50; i++) {
						escreva("\nConvidado(a): ", nome[i], ". Reserva ", i)
					}
					escreva("\nPressione Enter para prosseguir")
					leia(enter)
					pare
				
				caso 3:
					limpa()
					escreva("Escreva o nome que será removido: ")
					cadeia nome_removido
					leia(nome_removido)
					
					para (inteiro i = 0; i < 50; i++) {
						se (nome_removido == nome[i]) {
							nome[i] = "Vago"
							quantidade_convidados--
							vago++
							pare // Sai do loop após remover o nome
						}
					}
					pare
				
				caso 4:
					limpa()
					valorTotal = quantidade_convidados * 120
					escreva("O valor total a ser pago é de R$ ", valorTotal, " para o total de ", quantidade_convidados, " convidados.")
					pare
				
				caso 0:
					pare
				
				caso contrario:
					escreva("Opção inválida!\n")
			}
		} enquanto (opcao != 0)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 726; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */