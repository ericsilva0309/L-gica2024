programa
{
// 1) Leia um número e retorne como resposta se ele é positivo, negativo ou zero.
	funcao inicio()
	{
		/*
		inteiro numero
		
		escreva("Diga um número: ")
		leia(numero)

		se(numero>0)
		{
			escreva("O número é Positivo")
		}
		senao se(numero==0)
		{
			escreva("O numero é zero.")
		}
		senao
		escreva("O numero é negativo")

		*/

/* 2) 3) 4) feitos em aula com o professor
 *
* 5) Implemente um programa que considera as seguintes opções para determinar 
		 * se o usuário usará a fila preferencial ou a fila comum.
			O usuário usa a fila preferencial caso :
			●Possui mais de 65 anos : Usa fila preferencial
			●É deficiente físico : Usa fila preferencial
			●É gestante : Usa fila preferencial
			O programa recebe como entrada nome, a idade, e a condição especial do usuário,
			se houver.
			Exemplo de entrada: Maria, 22, deficiente
			Saída esperada: Fila preferencial
		 */
/* NÃO FUNCIONOU com o comando "ESCOLHA", fica de exemplo:
		inteiro idade 
		inteiro deficiente, gestante

		escreva("Qual a sua idade? ")
		leia(idade)
		se (idade>=65)
		{
			escreva ("Você tem direito")
		}
		senao
		{
			escreva("\n")
		}
		escreva("Você é deficiente?\n")
     	escreva("1 - Sim\n")
    		escreva("2 - Não\n")
     	escreva("Digite a opção desejada: ")
     	leia(deficiente)
     	escolha(deficiente){

			caso 1: escreva("Voce tem direito a fila preferencial.")
			pare
			caso 2: escreva("Voce não tem direito a fila preferencial.")
			pare
			caso contrario: escreva("contrario")
			pare
     	}
		escreva("\nVocê é gestante?\n")
     	escreva("1 - Sim\n")
    		escreva("2 - Não\n")
     	escreva("Digite a opção desejada: ")
     	leia(gestante)
     	escolha(gestante){

			caso 1: escreva("Voce tem direito a fila preferencial.")
			pare
			caso 2: escreva("Voce não tem direito a fila preferencial.")
			pare
			caso contrario: escreva("contrario")
			pare

			*/
/*5) SOLUÇÃO DO PROFESSOR:
			 *  
*programa
{

    funcao inicio()
    {
        cadeia nome, condicao
        inteiro idade
        escreva("Nome:")
        leia(nome)
        escreva("Idade:")
        leia(idade)
        escreva("Condicao:")
        leia(condicao)

        se(idade >= 65 ou condicao=="Gestante" ou condicao=="Deficiente"){
            escreva("Fila preferencial")
        }senao{
            escreva("Fila comum")
        }

    }
}
			 */


/*6)Faça um programa para que leia a idade e o nome de um jogador de futebol.
				Categorias:
				abaixo de 10: escolinha
				De 10-17: categorias de base
				De 18-40: profissional
				Acima de 40: master
				
				A resposta deverá ser conforme exemplo abaixo:
				Entrada:
				nome: João
				idade: 30
				Categoria: Profissional */

/*
        cadeia nome
        inteiro idade
        escreva("Nome:")
        leia(nome)
        escreva("Idade:")
        leia(idade)
       

        se(idade<10)
        		{
            	escreva("Categoria: Escolinha\n")
       		}
        senao se(idade<=17)
        		{
            	escreva("Categorias de Base\n")
        		}
        senao se(idade<=40)
        		{
            	escreva("Categoria: Profissional\n")
        		}
        senao 
        		{
            	escreva("Categoria: Master\n")
        		}
        
    }
}

*/
	
/*7) A padaria Hotpão vende uma certa quantidade de pães franceses e uma quantidade de broas a cada dia. Cada 
	 * pãozinho custa R$ 0,50 e a broa custa R$ 5,00. Ao final do dia, o dono quer saber quanto arrecadou com a 
	 * venda dos pães e broas (juntos), e quanto deve guardar numa conta de poupança (10% do total arrecadado). 
	 * Você foi contratado para fazer os cálculos para o dono. Com base nestes fatos, faça um algoritmo para 
	 * ler as quantidades de pães e de broas, e depois calcular os dados solicitados.
	 */
	 /*
	real precopao, precobroa, pao, broa, resultado1, resultado2, resultado3
        precopao = (0.50)
        precobroa = (5.00)
        escreva("Quantidade de pães vendidos: ")
        leia(pao)
        escreva("Quantidade de broas vendidas: ")
        leia(broa)
        resultado1 = (precopao*pao)
        resultado2 = (precobroa*broa)
        resultado3 = (resultado1+resultado2)
        escreva("O toltal vendido hoje foi ",resultado3," Reais.")
    }
}
/*7) A padaria Hotpão vende uma certa quantidade de pães franceses e uma quantidade de broas a cada dia. Cada 
	 * pãozinho custa R$ 0,50 e a broa custa R$ 5,00. Ao final do dia, o dono quer saber quanto arrecadou com a 
	 * venda dos pães e broas (juntos), e quanto deve guardar numa conta de poupança (10% do total arrecadado). 
	 * Você foi contratado para fazer os cálculos para o dono. Com base nestes fatos, faça um algoritmo para 
	 * ler as quantidades de pães e de broas, e depois calcular os dados solicitados.
	 */
	 
	real precopao, precobroa, pao, broa, resultado1, resultado2, resultado3, poupanca
        precopao = (0.50)
        precobroa = (5.00)
        escreva("Quantidade de pães vendidos: ")
        leia(pao)
        escreva("Quantidade de broas vendidas: ")
        leia(broa)
        resultado1 = (precopao*pao)
        resultado2 = (precobroa*broa)
        resultado3 = (resultado1+resultado2)
        escreva("O total vendido hoje foi ",resultado3," Reais.")

        poupanca = 0.1*resultado3
        escreva("Voce devera guardar ", poupanca)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */