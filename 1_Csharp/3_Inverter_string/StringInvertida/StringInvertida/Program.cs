/*
 * ----------------------------------------------------------------------------------------
 *                              DESAFIO 3: Inverter uma string
 * ----------------------------------------------------------------------------------------
 * Crie um código que:
 * Solicite ao usuário uma string.
 * Inverta a ordem das palavras da string.
 * Imprima/Exiba  a string invertida na tela.
 * ----------------------------------------------------------------------------------------
 */


Console.Write("Digite uma frase: ");
string Frase = Console.ReadLine();

// Divide a string em palavras e inverte a ordem das palavras
string[] words = Frase.Split(' ');
Array.Reverse(words);

// Une as palavras em uma nova string
string FraseInvertida = string.Join(" ", words);

Console.WriteLine("Frase com a ordem das palavras invertida:");
Console.WriteLine(FraseInvertida);

/*
 * ----------------------------------------------------------------------------------------
 */