programa
{
/*1) Criar um matriz 5x2 do tipo cadeia onde deverá ser inicializada com usuários e senhas.  

Na função inicio o usuário deverá ler um usuário e senha.

Deverá ser criada uma função para buscar na matriz se este usuário e senha foram encontrados
e retornar se achou ou não este usuário, caso o usuário for encontrado escreva 
uma mensagem "Bem vindo ao sistema" */

	
	funcao inicio()
	{
		
		cadeia usuario, senha

		escreva("Nome de Usuário: ")
		leia(usuario)
		
		escreva("Senha: ")
		leia(senha)

		escreva(servidor(usuario,senha))
		
		
	}
	funcao cadeia servidor (cadeia u, cadeia s)
	{
		cadeia bancodedados[5][2]={{"Usuario","Senha"},{"abc","123"},{"Ciclano","123654"},{"Beltrano","987654"},{"usu","321"}}
		
		para(inteiro linha=0; linha<5; linha++)
			{				
				se (u == bancodedados[linha][0] e s == bancodedados[linha][1]){retorne "Bem vindo ao Sistema!"}			
			}
			retorne "Usuário ou senha incorretos"	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 939; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */