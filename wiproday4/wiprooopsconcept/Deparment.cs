using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace wiprooopsconcept
{
    internal class Deparment: Employee
    {
        public string DeptName { get; set; }
        public int Salary { get; set; }

        public override void Display()
        {
            Console.WriteLine(DeptName + " " + Salary);
        }

    }
}
