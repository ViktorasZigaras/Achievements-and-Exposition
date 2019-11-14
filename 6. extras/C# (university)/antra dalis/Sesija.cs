using System;

namespace Sudoku1
{
	/// <summary>
	/// Summary description for Sesija.
	/// </summary>
	public class Sesija
	{
		public Sesija(int sPID, int cPID, string data)
		{
			serverPortoID = sPID;
			clientPortoID = cPID;
			duomenys = data;
		}

		public int serverPortoID;
		public int clientPortoID;
		public string duomenys;
	}
}
