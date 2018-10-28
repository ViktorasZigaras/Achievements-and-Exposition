using System;
using System.IO;

namespace Sudoku1
{
	/// <summary>
	/// Summary description for Class1.
	/// </summary>
	public class Klientui
	{
		public Klientui()
		{
			
		}

		public int[,] isorinis = new int[10,10];

		public int converse (char s)
		{
			if (s=='0'){return 0;}
			if (s=='1'){return 1;}
			if (s=='2'){return 2;}
			if (s=='3'){return 3;}
			if (s=='4'){return 4;}
			if (s=='5'){return 5;}
			if (s=='6'){return 6;}
			if (s=='7'){return 7;}
			if (s=='8'){return 8;}
			if (s=='9'){return 9;}
			return 0;
		}

		public string converse2 (int s)
		{
			if (s==0){return "0";}
			if (s==1){return "1";}
			if (s==2){return "2";}
			if (s==3){return "3";}
			if (s==4){return "4";}
			if (s==5){return "5";}
			if (s==6){return "6";}
			if (s==7){return "7";}
			if (s==8){return "8";}
			if (s==9){return "9";}
			return "a";
		}
	   
    public void isFailo(StreamReader s)
		{
			char[] buf = new char[11];
			
			for (int i=1;i<=9;i++)
			{
				
				s.Read(buf,0,11);

				for (int j=1;j<=9;j++)
				{
					isorinis[i,j]=converse(buf[j-1]);;
				}
				
			}
		}

	}
}
