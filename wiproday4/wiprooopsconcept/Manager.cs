using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace wiprooopsconcept
{
    internal class Manager : Deparment
    {
        public string ManagerName { get; set; }
       
        public virtual void Display()
        { 
            base.Display();
        
            Console.WriteLine("Mnager name" + ManagerName);
        }
    }
}
