﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using wiprooopsconcept1;

namespace wiprooopsconcept1
{
    internal class Deparment : Employee
    {
        public string DeptName { get; set; }
        public decimal Salary { get; set; }

        public Deparment(int id, string name, string dname, decimal salary) : base(id, name)
        {
            DeptName = dname;
            Salary = salary;
        }

        //public void show()
        //{
        //    Console.WriteLine(DeptName + " " + Salary);
        //}
        public override void Display()
        {
            base.Display();//control goes to the base class(Employee) display method
            Console.WriteLine(DeptName + " " + Salary);
        }
    }
}