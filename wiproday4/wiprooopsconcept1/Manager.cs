using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace wiprooopsconcept1
{
    internal class Manager : Deparment
    {
        public string ManagerName { get; set; }
        public Manager(int eid, string ename, string dname, decimal sal, string ManagerName) : base(eid, ename, dname, sal)
        {
            this.ManagerName = ManagerName;
        }

        public virtual void Display()
        {
            base.Display();

            Console.WriteLine("Mnager name" + ManagerName);
        }
    }
}
