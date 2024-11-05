/*
 * ----------------------------------------------------------------------------------------
 *                              DESAFIO 5: Lista ordenada
 * ----------------------------------------------------------------------------------------
 * Crie um código que:
 * Crie uma lista com 10 números aleatórios entre 1 e 100.
 * Ordene a lista em ordem crescente.
 * Imprima/Exiba  a lista ordenada na tela.
 * ----------------------------------------------------------------------------------------
 */


// Cria uma instância de Random
using static System.Runtime.InteropServices.JavaScript.JSType;

Random random = new Random();

// Gera uma lista de 10 números aleatórios entre 1 e 100
List<int> numeros = new List<int>();
Console.WriteLine("Lista de 10 números aleatórios entre 1 e 100:");
Console.Write("[");
for (int i = 0; i < 10; i++)
{
    int numero = random.Next(1, 101);
    if (i == 9)
    {
        Console.Write(numero);
    }
    else
    {
        Console.Write(numero + ", ");
    }
    numeros.Add(numero);
}
Console.WriteLine("]");

// Ordena a lista em ordem crescente
numeros.Sort();

// Exibe a lista ordenada no console
Console.WriteLine("Lista ordenada:");
Console.Write("[");
for (int i = 0; i < 10; i++)
{
    if (i == 9)
    {
        Console.Write(numeros[i]);
    }
    else
    {
        Console.Write(numeros[i] + ", ");
    }
}
Console.Write("]");

/*
 * ----------------------------------------------------------------------------------------
 */