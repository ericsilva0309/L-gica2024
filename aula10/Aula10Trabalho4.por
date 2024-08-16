programa{inteiro lugares[10][12]
/* <== apertar o 2[-] esconde todo o comentario
 *  
					4º Trabalho em Grupo
	
	Criar um algoritmo para reserva de assentos em um cinema. No nosso exemplo
a sala de cinema deverá possuir dez filas com doze assentos totalizando cento e
vinte assentos.
Obs: O programa deverá funcionar até que for digitado um valor de assento
negativo.


	No começo do programa todos os assentos deverão ser inicializados com
zeros(0). O zero(0) indicará que o assento não foi ocupado.
	|_ " 0 0 0 0 0 0 0 0 0 0 " fileira1
	   " 0 0 0 0 0 0 0 0 0 0 " fileira2

	Para reservar um assento digite a linha e a coluna do assento, caso não exista
deverá ser criticado.
	|_ add - comprar fileira2 assento1


	O um(1) indicará que o assento foi ocupado. Após a digitação da linha e coluna,
listar todos os assentos para exibir que a leitura dos dados foi preenchida
corretamente.
	|_	add - comprar fileira2 assento1:
	
	 coluna1 2 3 4 5 6 7 8 9 10	      
		" 0 0 0 0 0 1 1 0 0 1 " fileira1
		">1<0 1 1 1 1 1 0 0 0 " fileira2
   assento1/\

		 
	Caso o assento já esteja reservado deverá ser criticado
	|_	"Assento já está reservado"

O trabalho deverá ser adicionado ao repositório do GitHub.	
	*/
	funcao zerador(){		
	para(inteiro fileira=0; fileira<10; fileira++){
			para(inteiro assento=0; assento<12; assento++){
				lugares[fileira][assento]=0						
			}
		}	
	}	
	funcao inicio(){

		cadeia ok

		//zerador de lugares:
		zerador()	
		
		//tela inicial		
		escreva("\n===================================================")
		escreva("\n\t   Boas vindas ao CinemaTec.")
		escreva("\n===================================================")
		menu()
	}

		funcao menu(){

		inteiro fileiraEscolhida
		inteiro assentoEscolhido
		cadeia ok

	faca{
		escreva("\n  Abaixo serão exibidos os assentos do cinema")
		escreva("\n---------------------------------------------------\n")
		escreva("  |A1 |A2 |A3 |A4 |A5 |A6 |A7 |A8 |A9 |A10|A11|A12|\n")
		para(inteiro fileira=0; fileira<10; fileira++){
			para(inteiro assento=0; assento<12; assento++){
				se (assento<11){
					escreva("   ",lugares[fileira][assento])
				}senao{escreva("   ",lugares[fileira][assento],"   Fileira ",fileira+1,"\n")}
			}
		}
		
		
		escreva("---------------------------------------------------\n")
		escreva("Assentos com 0 estão livres para escolha.\nAssentos com 1 já se encotram ocupados.")
		escreva("\n===================================================\n")
		escreva("Agora você escolherá o lugar que deseja reservar:")
		escreva("\nDigite a FILEIRA do assento desejado: ")
		leia(fileiraEscolhida)
		fileiraEscolhida-=1 //para pegar o 0 da matriz quando digitar 1
		
		escreva("Digite o ASSENTO da fileira ",fileiraEscolhida+1," que deseja reservar: ")
		leia(assentoEscolhido)
		assentoEscolhido-=1 //para pegar o 0 da matriz quando digitar 1
		

		se(fileiraEscolhida<0 ou assentoEscolhido<0)
			{escreva("\n\nCOMANDO DE DESLIGAMENTO DO MENU POR NÚMERO NEGATIVO\n\n")
			confirmacaoDesligamento()}
			
		senao se(lugares[fileiraEscolhida][assentoEscolhido]==0)
			{lugares[fileiraEscolhida][assentoEscolhido]=1
			escreva("\n\nO assento ", assentoEscolhido+1," da fileira ", fileiraEscolhida+1," foi reservado com sucesso\n")
			escreva("Pressione enter para continuar reservando")
			leia(ok)}
		senao{escreva("\n\nATENÇÃO. O assento ", assentoEscolhido+1," da fileira ", fileiraEscolhida+1," já está reservado.\n")
			escreva("Escolha abaixo outro assento/fileira que tenha valor 0.")
			leia(ok)}
		
		}enquanto(fileiraEscolhida>=0 e assentoEscolhido>=0)
	}
	funcao confirmacaoDesligamento(){
		
			cadeia confirmacaoDesligamento

			escreva("Tem certeza que deseja desligar o sistema? [S/N]=")
			leia(confirmacaoDesligamento)
			se(confirmacaoDesligamento=="N" ou confirmacaoDesligamento=="n"){escreva("Desligamento cancelado. O programa retornará ao menu")menu()}senao{powerOFF()}
			
	}
	funcao powerOFF(){}
//chave programa	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1453; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {fileiraEscolhida, 62, 10, 16}-{assentoEscolhido, 63, 10, 16};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */