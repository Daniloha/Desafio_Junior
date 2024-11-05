/*
 * ----------------------------------------------------------------------------------------
 *                              DESAFIO 1: Par ou Impar
 * ----------------------------------------------------------------------------------------
 * Crie um código que:
 * Solicite ao usuário um número inteiro.
 * Verifique se o número é par ou ímpar.
 * Imprima/Exiba na tela uma mensagem indicando o resultado
 * ----------------------------------------------------------------------------------------
 */

Console.Write("Insira um numero inteiro: ");
int numero = int.Parse(Console.ReadLine());

if (numero % 2 == 0) Console.WriteLine($"\nO numero {numero} é par");
else Console.WriteLine($"\nO numero {numero} é impar");

/*
 * ----------------------------------------------------------------------------------------
 */