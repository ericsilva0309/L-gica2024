programa
{
	cadeia  campeao = "", ultimo = ""
	
	    funcao inicio()
    {
        cadeia nomes[5]
        real alturas[5]

        para (inteiro i = 0; i < 5; i++){
                escreva("Nome : ")
                leia(nomes[i])
                escreva("Escreva a Altura em metros: ")
                leia(alturas[i])

        enquanto(alturas[i]<0)
        {
            escreva("Digite uma altura superior a zero")
            leia(alturas[i])

        }
        }
        para (inteiro i = 0; i < 5; i++){

            escreva("\n Nome: ",nomes[i] ,"\t Altura: ",alturas[i]," metros")


        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 352; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */