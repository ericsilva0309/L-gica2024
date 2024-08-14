programa
{
/* 2) Escrever um algoritmo que calcule o salario final de um vendedor,  
mostre o salário fixo, o valor de vendas e o salario final incluindo a 
comissão sobre as vendas no mês.

OBS: O algoritmo devera ler:

O nome do vendedor
Seu salário fixo
O valor das vendas no mes
Sua comissão sobre o valor das vendas efetuadas (em percentual)
O sistema deverá ter um critério de saída para finalizar o programa

 O SISTEMA DEVERÁ APRESENTAR O SEGUINTE RESULTADO (EXEMPLO)

//  ---------- SISTEMA DE GESTÃO DE VENDEDORES -----------
//  ------------------------------------------------------

//  >>> Digite o nome do vendedor: João da Silva
//  >>> Digite o salário: 1200
//  >>> Informe o valor das suas vendas deste no mês: 550
//  >>> Digite a comissão (em percentual): 10

//  -------------- R E S U M O --------------
//  -- Nome: João da Silva
//  -- Salário Líquido:  1200.00
//  -- Valor comissão:     55.00
//  -- Salário Final (salário + comissão):  1255.00 
//  ----------------------------------------- */

	
	funcao inicio()
	{
		cadeia nomeVendedor
		inteiro ok
		real salarioFinal=0, salarioFixo, valorDeVendasMes, comissao, comissaoF=0
		escreva("Digite 1 para calcular, digite 0 para sair: ")
		leia(ok)
		se (ok==1){
					
						escreva("\nDigite o nome do vendedor: ")
						leia(nomeVendedor)
						escreva("Digite o salário: ")
						leia(salarioFixo)
						escreva("Informe o valor das suas vendas deste no mês: ")
						leia(valorDeVendasMes)
						escreva("Digite a comissão (em percentual): ")
						leia(comissao)
				
						calculos(salarioFixo, valorDeVendasMes, comissao, comissaoF, salarioFinal)
				
						escreva("\nNome: ", nomeVendedor)
						escreva("\nSalario liquido: ", salarioFixo)		
						escreva("\nValor comissão: ", comissaoF)
						escreva("\nO salario final(comissão+salario): ", salarioFinal)
			
					
				}
				senao escreva("")
		
		
		
	}
	funcao calculos(real &sFixo, real &vDV, real &c, real &cF, real &sFinal){
		
		cF=vDV*c/100
		sFinal=cF+sFixo
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1883; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */