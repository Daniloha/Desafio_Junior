/*
 * ----------------------------------------------------------------------------------------
 *                              DESAFIO 4: Carro
 * ----------------------------------------------------------------------------------------
 * Crie um código que:
 * Instancie um objeto da classe Carro
 * Utilize os metodos da classe Carro.
 * Carro:
            Atributos/propriedades:
                      marca
                      modelo
                      ano
                      cor
            Métodos:
                      acelerar()
                      frear()
                      mostrar_informações()
 *
 * ----------------------------------------------------------------------------------------
 */
using Carro;

Console.WriteLine("\nInicio\n");
ClasseCarro carro = null;  // Define o carro como null inicialmente
var status = true;

/*
 * Função para validar o ano como numero inteiro
 */
Func<string, int> validarAno = input =>
{
    if (int.TryParse(input, out int anoValido))
    {
        return anoValido;
    }
    else
    {
        Console.WriteLine("Valor inválido para o ano. Usando 0 como valor padrão.");
        return 0;
    }
};

//Loop infinito para o menu
while (status)
{

    Console.WriteLine("Escolha uma opção");
    Console.WriteLine("0 - Criar carro");
    Console.WriteLine("1 - Acelerar");
    Console.WriteLine("2 - Frear");
    Console.WriteLine("3 - Informacoes");
    Console.WriteLine("4 - Sair");

    var opcao = Console.ReadLine();
    switch (opcao)
    {
        case "0":// Cria um novo carro
            Console.Clear(); // Limpa o terminal
            Console.WriteLine("\nCriar carro");
            Console.Write("Marca: ");
            var marca = Console.ReadLine();
            Console.Write("Modelo: ");
            var modelo = Console.ReadLine();


            Console.Write("Ano: ");
            var anoInput = Console.ReadLine();
            var ano = validarAno(anoInput); // Chama a função lambda para validar o ano

            Console.Write("Cor: ");
            var cor = Console.ReadLine();
            carro = new ClasseCarro(marca, modelo, ano, cor); // Usa a variável 'carro' global
            Console.WriteLine("Carro criado\n");
            break;

        case "1":// Acelera o carro
            Console.Clear(); // Limpa o terminal

            if (carro == null) Console.WriteLine("\nNenhum carro criado\n");
            else carro.Acelerar();
            break;

        case "2":// Freia o carro
            Console.Clear(); // Limpa o terminal

            if (carro == null) Console.WriteLine("\nNenhum carro criado\n");
            else carro.Frear();
            break;

        case "3":
            Console.Clear(); // Limpa o terminal

            if (carro == null) Console.WriteLine("\nNenhum carro criado\n");
            else Console.WriteLine(carro);
            break;

        case "4":
            Console.Clear(); // Limpa o terminal

            Console.WriteLine("\nSair");
            status = false;
            break;

        default:// Invalida qualquer outra opção que não faça parte daquelas estabelecida no menu
            Console.Clear(); // Limpa o terminal

            Console.WriteLine("\nOpção inválida\n");
            break;
    }
}
Console.WriteLine("Fim\n");


