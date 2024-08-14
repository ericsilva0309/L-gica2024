// ---------- SISTEMA DE GESTÃO DE VENDEDORES -----------
// Programa para calcular o salário final de um vendedor, incluindo comissão sobre vendas.

programa
{
    funcao inicio()
    {
        cadeia nomeVendedor
        real salarioFixo, valorDeVendasMes, comissaoPercentual, comissaoValor, salarioFinal
        inteiro continuar = 1


        enquanto (continuar == 1)
        {
            // Entrada de dados do vendedor
            escreva("\n>>> Digite o nome do vendedor: ")
            leia(nomeVendedor)
            escreva(">>> Digite o salário fixo: ")
            leia(salarioFixo)
            escreva(">>> Informe o valor das vendas no mês: ")
            leia(valorDeVendasMes)
            escreva(">>> Digite a comissão (em percentual): ")
            leia(comissaoPercentual)

            // Cálculos de comissão e salário final
            comissaoValor = calcularComissao(valorDeVendasMes, comissaoPercentual)
            salarioFinal = calcularSalarioFinal(salarioFixo, comissaoValor)

            // Exibição do resumo
            exibirResumo(nomeVendedor, salarioFixo, comissaoValor, salarioFinal)

            // Verifica se o usuário deseja continuar
            escreva("\nDigite 1 para calcular novamente, ou 0 para sair: ")
            leia(continuar)
        }
    }

    // Função para calcular o valor da comissão
    funcao real calcularComissao(real valorDeVendasMes, real comissaoPercentual)
    {
        retorne valorDeVendasMes * comissaoPercentual / 100
    }

    // Função para calcular o salário final
    funcao real calcularSalarioFinal(real salarioFixo, real comissaoValor)
    {
        retorne salarioFixo + comissaoValor
    }

    // Função para exibir o resumo dos cálculos
    funcao exibirResumo(cadeia nomeVendedor, real salarioFixo, real comissaoValor, real salarioFinal)
    {
        escreva("\n-------------- R E S U M O --------------")
        escreva("\nNome: ", nomeVendedor)
        escreva("\nSalário Líquido: R$ ", salarioFixo)
        escreva("\nValor Comissão: R$ ", comissaoValor)
        escreva("\nSalário Final (Salário + Comissão): R$ ", salarioFinal)
        escreva("\n-----------------------------------------\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */