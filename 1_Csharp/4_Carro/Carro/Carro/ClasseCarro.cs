namespace Carro
{
    internal class ClasseCarro
    {

        //Atributos
        public string Marca { get; set; }
        public string Modelo { get; set; }
        public int Ano { get; set; }
        public string Cor { get; set; }

        //Construtores

        //Construtor vazio
        public ClasseCarro()
        {
        }
        //Construtor com argumentos
        public ClasseCarro(string marca, string modelo, int ano, string cor)
        {
            Marca = marca;
            Modelo = modelo;
            Ano = ano;
            Cor = cor;
        }

        //Métodos
        public void Acelerar()
        {
            Console.WriteLine("\nO carro esta acelerando...\n");
        }

        public void Frear()
        {
            Console.WriteLine("\nO carro esta freando...\n");
        }

        public override string ToString()
        {
            return $"\nInformações do carro:\n" +
                $"Marca: {Marca}\n" +
                $"Modelo: {Modelo}\n" +
                $"Ano: {Ano}\n" +
                $"Cor: {Cor}\n";
        }

    }

}

