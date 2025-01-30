using wiprooopsconcept1;

class Program
{
    static void Main(string[] args)
    {
        int id = Convert.ToInt32(Console.ReadLine());
        string name = Console.ReadLine();
        string dname = Console.ReadLine();
        decimal sal = Convert.ToDecimal(Console.ReadLine());
        string mname = Console.ReadLine();
        Manager mgrcon = new Manager(id, name, dname, sal, mname);
        mgrcon.Display();



    }
}