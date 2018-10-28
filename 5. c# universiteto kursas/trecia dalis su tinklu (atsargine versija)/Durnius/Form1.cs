using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;
using System.Net;
using System.Net.Sockets;

namespace Durnius
{
	/// <summary>
	/// Summary description for Form1.
	/// </summary>
	public class Form1 : System.Windows.Forms.Form
	{
		private Socket socListenerP1toD;
		private Socket socListenerP2toD;
		private AsyncCallback pfnWorkerCallBackP1toD;
		private AsyncCallback pfnWorkerCallBackP2toD;
		private Socket socWorkerP1toD;
		private Socket socWorkerP2toD;

		private Socket socToDtoP1;
		private Socket socToDtoP2;

		//kortos
		private korta[] kortos = new korta[53]; 
		private korta[] kortosP1 = new korta[53];
		private korta[] kortosP2 = new korta[53];
		private korta koziris = new korta();
		private string Koziris;

		private int kortuKaladeje = 0;
		private int kortuP1rankoje = 0;
		private int kortuP2rankoje = 0;
		
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Button button2;

		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		public Form1()
		{
			//
			// Required for Windows Form Designer support
			//
			InitializeComponent();

			//kortos = new korta[53];

			//8002 - stalas to player 1 gaunantis socketas
			try
			{
				socListenerP1toD = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);		
				IPEndPoint ipLocal = new IPEndPoint (IPAddress.Any ,8002);
				socListenerP1toD.Bind(ipLocal);
				socListenerP1toD.Listen(4);
				socListenerP1toD.BeginAccept(new AsyncCallback(OnConnect1), null);

			}
			catch(Exception ee)
			{
				MessageBox.Show ( ee.Message );
			}

			Form2 f2 = new Form2();
			f2.Show();

			//8001 - stalas to player 1 siunciantis socketas
			try
			{
				socToDtoP1 = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
				String ip  = "127.0.0.1";
				String port = "8001";
				int  intPort = System.Convert.ToInt16 (port,10);
			
				System.Net.IPAddress	remoteIPAddress	 = System.Net.IPAddress.Parse(ip);
				System.Net.IPEndPoint	remoteEndPoint = new System.Net.IPEndPoint(remoteIPAddress, intPort);
				socToDtoP1.Connect(remoteEndPoint);

				//byte[] byData = System.Text.Encoding.ASCII.GetBytes(label5.Text.ToString());
				//socToDesk.Send (byData);

			}
			catch (Exception ee)
			{
				MessageBox.Show ( ee.Message );
			}

			//8004 - stalas to player 2 gaunantis socketas
			try
			{
				socListenerP2toD = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);		
				IPEndPoint ipLocal = new IPEndPoint (IPAddress.Any ,8004);
				socListenerP2toD.Bind(ipLocal);
				socListenerP2toD.Listen(4);
				socListenerP2toD.BeginAccept(new AsyncCallback(OnConnect2), null);

			}
			catch(Exception ee)
			{
				MessageBox.Show ( ee.Message );
			}

			Form3 f3 = new Form3();
			f3.Show();

			//8003 - stalas to player 2 siunciantis socketas
			try
			{
				socToDtoP2 = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
				String ip  = "127.0.0.1";
				String port = "8003";
				int  intPort = System.Convert.ToInt16 (port,10);
			
				System.Net.IPAddress	remoteIPAddress	 = System.Net.IPAddress.Parse(ip);
				System.Net.IPEndPoint	remoteEndPoint = new System.Net.IPEndPoint(remoteIPAddress, intPort);
				socToDtoP2.Connect(remoteEndPoint);

				//byte[] byData = System.Text.Encoding.ASCII.GetBytes(label5.Text.ToString());
				//socToDesk.Send (byData);

			}
			catch (Exception ee)
			{
				MessageBox.Show ( ee.Message );
			}

			MessageBox.Show("susijungta sekmingai");

			//
			// TODO: Add any constructor code after InitializeComponent call
			//
		}

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			if( disposing )
			{
				if (components != null) 
				{
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.button1 = new System.Windows.Forms.Button();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.button2 = new System.Windows.Forms.Button();
			this.SuspendLayout();
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(200, 224);
			this.button1.Name = "button1";
			this.button1.TabIndex = 0;
			this.button1.Text = "Iseiti";
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// label1
			// 
			this.label1.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(0)));
			this.label1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label1.Location = new System.Drawing.Point(96, 8);
			this.label1.Name = "label1";
			this.label1.TabIndex = 1;
			// 
			// label2
			// 
			this.label2.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(0)));
			this.label2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label2.Location = new System.Drawing.Point(16, 152);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(72, 23);
			this.label2.TabIndex = 2;
			// 
			// label3
			// 
			this.label3.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(0)));
			this.label3.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label3.Location = new System.Drawing.Point(208, 152);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(72, 23);
			this.label3.TabIndex = 3;
			// 
			// label4
			// 
			this.label4.Location = new System.Drawing.Point(48, 216);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(24, 23);
			this.label4.TabIndex = 4;
			// 
			// label5
			// 
			this.label5.BackColor = System.Drawing.Color.Lime;
			this.label5.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label5.Location = new System.Drawing.Point(160, 40);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(48, 23);
			this.label5.TabIndex = 5;
			this.label5.Text = "Koziris:";
			// 
			// label6
			// 
			this.label6.BackColor = System.Drawing.Color.Yellow;
			this.label6.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label6.Location = new System.Drawing.Point(208, 40);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(32, 23);
			this.label6.TabIndex = 6;
			// 
			// button2
			// 
			this.button2.Location = new System.Drawing.Point(80, 224);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(88, 23);
			this.button2.TabIndex = 7;
			this.button2.Text = "Zaisti is Naujo";
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// Form1
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
			this.ClientSize = new System.Drawing.Size(292, 266);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button1);
			this.Name = "Form1";
			this.Text = "Stalas";
			this.ResumeLayout(false);

		}
		#endregion

		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main() 
		{
			Application.Run(new Form1());
		}


		//desk to player 1

		public void OnConnect1(IAsyncResult asyn)
		{
			try
			{
				socWorkerP1toD = socListenerP1toD.EndAccept (asyn); 
				WaitForData1(socWorkerP1toD);
			}
			catch(Exception se)
			{
				MessageBox.Show ( se.Message );
			}
			
		}

		public void WaitForData1(System.Net.Sockets.Socket soc)
		{
			try
			{
				if  ( pfnWorkerCallBackP1toD == null ) 
				{
					pfnWorkerCallBackP1toD = new AsyncCallback (OnDataReceived1);
				}
				CSocketPacket theSocPkt = new CSocketPacket ();
				theSocPkt.thisSocket = soc;
				soc.BeginReceive (theSocPkt.dataBuffer ,0 ,theSocPkt.dataBuffer.Length ,SocketFlags.None, pfnWorkerCallBackP1toD, theSocPkt);
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message );
			}

		}

		public  void OnDataReceived1(IAsyncResult asyn)
		{
			try
			{				
				CSocketPacket theSockId = (CSocketPacket)asyn.AsyncState ;
				int iRx  = 0 ;
				iRx = theSockId.thisSocket.EndReceive (asyn);
				char[] chars = new char[iRx +  1];
				System.Text.Decoder d = System.Text.Encoding.UTF8.GetDecoder();
				int charLen = d.GetChars(theSockId.dataBuffer, 0, iRx, chars, 0);
				System.String szData = new System.String(chars);
				//gauti pranesimus
				WaitForData1(socWorkerP1toD);
					   
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message);
			}
		}

		private void siusti1()
		{
			//auto send on readyness
		}

		//desk to player 2

		public void OnConnect2(IAsyncResult asyn)
		{
			try
			{
				socWorkerP2toD = socListenerP2toD.EndAccept (asyn); 
				WaitForData2(socWorkerP2toD);
			}
			catch(Exception se)
			{
				MessageBox.Show ( se.Message );
			}
			
		}

		public void WaitForData2(System.Net.Sockets.Socket soc)
		{
			try
			{
				if  ( pfnWorkerCallBackP2toD == null ) 
				{
					pfnWorkerCallBackP2toD = new AsyncCallback (OnDataReceived1);
				}
				CSocketPacket theSocPkt = new CSocketPacket ();
				theSocPkt.thisSocket = soc;
				soc.BeginReceive (theSocPkt.dataBuffer ,0 ,theSocPkt.dataBuffer.Length ,SocketFlags.None, pfnWorkerCallBackP2toD, theSocPkt);
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message );
			}

		}

		public  void OnDataReceived2(IAsyncResult asyn)
		{
			try
			{				
				CSocketPacket theSockId = (CSocketPacket)asyn.AsyncState ;
				int iRx  = 0 ;
				iRx = theSockId.thisSocket.EndReceive (asyn);
				char[] chars = new char[iRx +  1];
				System.Text.Decoder d = System.Text.Encoding.UTF8.GetDecoder();
				int charLen = d.GetChars(theSockId.dataBuffer, 0, iRx, chars, 0);
				System.String szData = new System.String(chars);
				//gauti pranesimus
				WaitForData2(socWorkerP2toD);
					   
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message);
			}
		}

		private void siusti2()
		{
			//auto send on readyness
		}

		//zaidimas

		private void kurtiKortas()
		{
			for (int i=2;i<=14;i++)
			{
				kortuKaladeje++;
				//MessageBox.Show(System.Convert.ToString(kortuKaladeje));
				korta k1 = new korta();
				k1.rusis = "B";
				k1.skaicius = i;
				kortos[kortuKaladeje] = k1;

				kortuKaladeje++;
				korta k2 = new korta();
				k2.rusis = "S";
				k2.skaicius = i;
				kortos[kortuKaladeje] = k2;

				kortuKaladeje++;
				korta k3 = new korta();
				k3.rusis = "K";
				k3.skaicius = i;
				kortos[kortuKaladeje] = k3;

				kortuKaladeje++;
				korta k4 = new korta();
				k4.rusis = "C";
				k4.skaicius = i;
				kortos[kortuKaladeje] = k4;
			}
		}

		private void maisytiKortas()
		{
			Random random = new Random();
			for (int i = 1; i<=10; i++)
			{
				for (int y = 1; y<=52; y++)
				{
					korta bazine = kortos[y];
					int pozicijosPadidejimas  = random.Next(52);
					int naujaPozicija = y+pozicijosPadidejimas;
					if (naujaPozicija > 52)
					{
						naujaPozicija = naujaPozicija-52;
					}
					korta temp = kortos[naujaPozicija];
					kortos[naujaPozicija] = bazine;
					kortos[y] = temp;
				}
			}
		}

		private void dalintiKortas()
		{
			for (int x = 1; x<=6; x++)
			{
				pagalbinisVeiksmas1();
				pagalbinisVeiksmas2();
				//MessageBox.Show(System.Convert.ToString(x));
			}
			//traukti koziri (52-13)
			koziris = kortos[kortuKaladeje];
			kortos[kortuKaladeje] = null;
			kortuKaladeje--;
			Koziris = koziris.rusis;
			label6.Text = koziris.rusis;
		}

		private void pagalbinisVeiksmas1()
		{
			korta temp = kortos[kortuKaladeje];
			label4.Text = "a"+temp.rusis+System.Convert.ToString(temp.skaicius);
			byte[] byData = System.Text.Encoding.ASCII.GetBytes(label4.Text.ToString());
			socToDtoP1.Send (byData);
			label4.Text = "";
			kortos[kortuKaladeje] = null;
			kortuKaladeje--;
			kortuP1rankoje++;
			kortosP1[kortuP1rankoje] = temp;
		}

		private void pagalbinisVeiksmas2()
		{
			korta temp = kortos[kortuKaladeje];
			label4.Text = "a"+temp.rusis+System.Convert.ToString(temp.skaicius);
			byte[] byData = System.Text.Encoding.ASCII.GetBytes(label4.Text.ToString());
			socToDtoP2.Send (byData);
			label4.Text = "";
			kortos[kortuKaladeje] = null;
			kortuKaladeje--;
			kortuP2rankoje++;
			kortosP2[kortuP1rankoje] = temp;
		}

		private void dalintiKortasZaidimoEigoje(int player, int kiekis)
		{
			for (int i = 1; i<=kiekis; i++)
			{
				//dalinam
				if (kortuKaladeje !=0 )
				{
					kortuKaladeje--;
					//
					if (player==1)
					{
						//
					} 
					else 
					{
						//
					}
				} 
				else 
				{
					//
				}
				//
			}
		}

		//pagalbiniai

		private class CSocketPacket
		{
			public System.Net.Sockets.Socket thisSocket;
			public byte[] dataBuffer = new byte[50];
		}

		public class korta
		{
			public string rusis;
			public int skaicius;
		}

		private void button1_Click(object sender, System.EventArgs e)
		{
			this.Close();
		}

		private void button2_Click(object sender, System.EventArgs e)
		{
			kortos = new korta[53]; 
			kortosP1 = new korta[53];
			kortosP2 = new korta[53];
			koziris = new korta();
			Koziris = "";
			kortuKaladeje = 0;
			kortuP1rankoje = 0;
			kortuP2rankoje = 0;
			kurtiKortas();
			maisytiKortas();
			dalintiKortas();
		}
	}
}
