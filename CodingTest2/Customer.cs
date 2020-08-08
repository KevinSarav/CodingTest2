using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodingTest2
{
    public class Customer
    {
        string name;
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }

        string company;
        public string Company
        {
            get
            {
                return company;
            }
            set
            {
                company = value;
            }
        }

        string membership;
        public string Membership
        {
            get
            {
                return membership;
            }
            set
            {
                membership = value;
            }
        }

        string emailID;
        public string Email
        {
            get
            {
                return emailID;
            }
            set
            {
                emailID = value;
            }
        }

        string yearOfBirth;
        public string YearOfBirth
        {
            get
            {
                return yearOfBirth;
            }
            set
            {
                yearOfBirth = value;
            }
        }

        public int getAge()
        {
            return 2020 - Int32.Parse(yearOfBirth);
        }
    }
}