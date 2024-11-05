/*
 * ----------------------------------------------------------------------------------------
 *                       DESAFIO 2 - MEDIA SIMPLES
 * ----------------------------------------------------------------------------------------
 * Crie um código que:
 * Receba uma lista de números como parâmetro.
 * Calcule a média aritmética dos números da lista.
 * Retorne a média calculada.
 * ----------------------------------------------------------------------------------------
 */

Console.Write("Quantos numeros serao digitados? ");
int QuantidadeNumeros = int.Parse(Console.ReadLine());
double Soma = 0;

for (int i = 0; i < QuantidadeNumeros; i++)
{
    Console.Write($"Digite o {i + 1}° numero: ");
    double NumeroDigitado = double.Parse(Console.ReadLine());
    Soma = Soma + NumeroDigitado;
    if (i == QuantidadeNumeros - 1)
    {
        Console.WriteLine($"A media ({Soma}/{QuantidadeNumeros}) = {Soma / QuantidadeNumeros}");
    }
}
/*
 * ----------------------------------------------------------------------------------------
 */