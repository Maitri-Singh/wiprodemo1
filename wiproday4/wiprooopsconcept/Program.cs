using wiprooopsconcept;

class Program
{
    static void Main(string[] args)
    {
        Employee emp = new Employee();
        emp.Empid = 11;
        emp.EmpName = "Test";
        emp.Display();

        Deparment dpt = new Deparment();
        dpt.Empid = 111;
        dpt.EmpName = "priya";
        dpt.DeptName = "Developer";
        dpt.Salary = 50000;
        dpt.Display();


        Manager mgr = new Manager();
        mgr.Empid = 111;
        mgr.EmpName = "priya";
        mgr.DeptName = "Developer";
        mgr.Salary = 50000;
        mgr.ManagerName = "Riya";
        mgr.Display();
        int id = Convert.ToInt32(Console.ReadLine());
        string name = Console.ReadLine();
        string dname = Console.ReadLine();
        decimal sal = Convert.ToDecimal(Console.ReadLine());
        string mname = Console.ReadLine();
        Manager mgrcon = new Manager(id, name, dname, sal, mname);
        mgrcon.Display();
    



    }
}