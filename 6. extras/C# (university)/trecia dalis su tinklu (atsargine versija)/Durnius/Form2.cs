using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Net;
using System.Net.Sockets;

namespace Durnius
{
	/// <summary>
	/// Summary description for Form2.
	/// </summary>
	public class Form2 : System.Windows.Forms.Form
	{
		private Socket socListenerPlayer1;
		private AsyncCallback pfnWorkerCallBackPlayer1;
		private Socket socWorkerPlayer1;

		private Socket socToDesk;

		//kortos
		private korta[] kortos = new korta[53];
		private int kortuP1rankoje = 0;
		
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.TextBox textBox1;
		private System.Windows.Forms.Label label1;

		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		public Form2()
		{
			//
			// Required for Windows Form Designer support
			//
			InitializeComponent();

			//8002 - player 1 siunciantis socketas
			try
			{
				socToDesk = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
				String ip  = "127.0.0.1";
				String port = "8002";
				int  intPort = System.Convert.ToInt16 (port,10);
			
				System.Net.IPAddress	remoteIPAddress	 = System.Net.IPAddress.Parse(ip);
				System.Net.IPEndPoint	remoteEndPoint = new System.Net.IPEndPoint(remoteIPAddress, intPort);
				socToDesk.Connect(remoteEndPoint);

				//byte[] byData = System.Text.Encoding.ASCII.GetBytes(label5.Text.ToString());
				//socToDesk.Send (byData);

			}
			catch (Exception ee)
			{
				MessageBox.Show ( ee.Message );
			}

			//8001 - player 1 gaunantis socketas
			try
			{
				socListenerPlayer1 = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);		
				IPEndPoint ipLocal = new IPEndPoint (IPAddress.Any ,8001);
				socListenerPlayer1.Bind(ipLocal);
				socListenerPlayer1.Listen(4);
				socListenerPlayer1.BeginAccept(new AsyncCallback(OnConnect), null);

			}
			catch(Exception ee)
			{
				MessageBox.Show ( ee.Message );
			}

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
				if(components != null)
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
			this.button2 = new System.Windows.Forms.Button();
			this.textBox1 = new System.Windows.Forms.TextBox();
			this.label1 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(192, 168);
			this.button1.Name = "button1";
			this.button1.TabIndex = 0;
			this.button1.Text = "Siusti";
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// button2
			// 
			this.button2.Location = new System.Drawing.Point(192, 200);
			this.button2.Name = "button2";
			this.button2.TabIndex = 1;
			this.button2.Text = "Toliau";
			// 
			// textBox1
			// 
			this.textBox1.Location = new System.Drawing.Point(128, 168);
			this.textBox1.Name = "textBox1";
			this.textBox1.Size = new System.Drawing.Size(56, 20);
			this.textBox1.TabIndex = 7;
			this.textBox1.Text = "";
			// 
			// label1
			// 
			this.label1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label1.Location = new System.Drawing.Point(80, 8);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(40, 240);
			this.label1.TabIndex = 6;
			// 
			// Form2
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(128)), ((System.Byte)(128)), ((System.Byte)(255)));
			this.ClientSize = new System.Drawing.Size(292, 266);
			this.Controls.Add(this.textBox1);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.button1);
			this.Name = "Form2";
			this.Text = "Player1";
			this.ResumeLayout(false);

		}
		#endregion

		public void OnConnect(IAsyncResult asyn)
		{
			try
			{
				socWorkerPlayer1 = socListenerPlayer1.EndAccept (asyn); 
				WaitForData(socWorkerPlayer1);
			}
			catch(Exception se)
			{
				MessageBox.Show ( se.Message );
			}
			
		}

		public void WaitForData(System.Net.Sockets.Socket soc)
		{
			try
			{
				if  ( pfnWorkerCallBackPlayer1 == null ) 
				{
					pfnWorkerCallBackPlayer1 = new AsyncCallback (OnDataReceived);
				}
				CSocketPacket theSocPkt = new CSocketPacket ();
				theSocPkt.thisSocket = soc;
				soc.BeginReceive (theSocPkt.dataBuffer ,0 ,theSocPkt.dataBuffer.Length ,SocketFlags.None, pfnWorkerCallBackPlayer1, theSocPkt);
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message );
			}

		}

		public  void OnDataReceived(IAsyncResult asyn)
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
					   //gaunama korta
					   if (szData.Substring(0,1) == "a")
					   {
						   kortuP1rankoje++;
						   MessageBox.Show(System.Convert.ToString(kortuP1rankoje));
						   korta nauja = new korta();
						   nauja.rusis = szData.Substring(1,1);
						   if (szData.Substring(2,1) == "1")
						   {
							   nauja.skaicius = System.Convert.ToInt16(szData.Substring(2,2));
						   } 
						   else 
						   {
							   nauja.skaicius = System.Convert.ToInt16(szData.Substring(2,1));
						   }
						   kortos[kortuP1rankoje] = nauja;
						   atvaizduoti();
					   }
					   //
					   //
					   WaitForData(socToDesk);
					   
				   }
				   catch(Exception se)
				   {
					   MessageBox.Show (se.Message);
				   }
			   }

		public void atvaizduoti()
		{
			label1.Text = "";
			for (int i = 1; i<=kortuP1rankoje; i++)
			{
				label1.Text = label1.Text + System.Convert.ToString(i) + " " + System.Convert.ToString(kortos[i].skaicius) + " " + kortos[i].rusis + " ";
			}
		}

		private void button1_Click(object sender, System.EventArgs e)
		{
			//reaguoti
		}

		public class korta
		{
			public string rusis;
			public int skaicius;
		}

		private class CSocketPacket
		{
			public System.Net.Sockets.Socket thisSocket;
			public byte[] dataBuffer = new byte[50];
		}

	}
}
