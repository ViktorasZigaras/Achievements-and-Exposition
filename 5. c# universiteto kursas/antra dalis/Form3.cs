using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;
using System.Net;
using System.Net.Sockets;

namespace Sudoku1
{
	/// <summary>
	/// Summary description for Form3.
	/// </summary>
	public class Form3 : System.Windows.Forms.Form
	{
		//private Form0 ff;
		private int id = 0;
		private bool open = true;
		private string temp;
		private string duomenys;
		private Serveriui ss = new Serveriui();
		private Socket server;
		//private Socket serverWorker;
		//private AsyncCallback pfnWorkerCallBack;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.Button button4;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.TextBox textBox3;
		private System.Windows.Forms.TextBox textBox2;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Button button5;
		private System.Windows.Forms.Button button6;
		private System.Windows.Forms.Button button7;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.Label label11;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		public Form3(Form0 fff, int idd)
		{
			//
			// Required for Windows Form Designer support
			//
			InitializeComponent();
			String s = System.Convert.ToString(idd);
			id = idd;
			label1.Text = s;

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
			this.button3 = new System.Windows.Forms.Button();
			this.button4 = new System.Windows.Forms.Button();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label9 = new System.Windows.Forms.Label();
			this.label8 = new System.Windows.Forms.Label();
			this.textBox3 = new System.Windows.Forms.TextBox();
			this.textBox2 = new System.Windows.Forms.TextBox();
			this.label5 = new System.Windows.Forms.Label();
			this.button5 = new System.Windows.Forms.Button();
			this.button6 = new System.Windows.Forms.Button();
			this.button7 = new System.Windows.Forms.Button();
			this.label6 = new System.Windows.Forms.Label();
			this.label7 = new System.Windows.Forms.Label();
			this.label10 = new System.Windows.Forms.Label();
			this.label11 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// button1
			// 
			this.button1.BackColor = System.Drawing.Color.Aqua;
			this.button1.Location = new System.Drawing.Point(16, 56);
			this.button1.Name = "button1";
			this.button1.TabIndex = 0;
			this.button1.Text = "Prisijungti";
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// button2
			// 
			this.button2.BackColor = System.Drawing.Color.Aqua;
			this.button2.Location = new System.Drawing.Point(112, 48);
			this.button2.Name = "button2";
			this.button2.TabIndex = 1;
			this.button2.Text = "Blokuoti";
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// button3
			// 
			this.button3.BackColor = System.Drawing.Color.Aqua;
			this.button3.Location = new System.Drawing.Point(112, 80);
			this.button3.Name = "button3";
			this.button3.TabIndex = 2;
			this.button3.Text = "Atsijungti";
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// button4
			// 
			this.button4.BackColor = System.Drawing.Color.Aqua;
			this.button4.Location = new System.Drawing.Point(112, 176);
			this.button4.Name = "button4";
			this.button4.TabIndex = 3;
			this.button4.Text = "Išeiti";
			this.button4.Click += new System.EventHandler(this.button4_Click);
			// 
			// label1
			// 
			this.label1.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(224)), ((System.Byte)(224)), ((System.Byte)(224)));
			this.label1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label1.Location = new System.Drawing.Point(56, 208);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(64, 23);
			this.label1.TabIndex = 4;
			// 
			// label2
			// 
			this.label2.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label2.Location = new System.Drawing.Point(128, 208);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(56, 23);
			this.label2.TabIndex = 5;
			this.label2.Text = "ID";
			// 
			// label3
			// 
			this.label3.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(224)), ((System.Byte)(224)), ((System.Byte)(224)));
			this.label3.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label3.Location = new System.Drawing.Point(56, 240);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(64, 23);
			this.label3.TabIndex = 6;
			this.label3.Text = "Neuzimta";
			// 
			// label4
			// 
			this.label4.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label4.Location = new System.Drawing.Point(128, 240);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(56, 23);
			this.label4.TabIndex = 7;
			this.label4.Text = "busena";
			// 
			// label9
			// 
			this.label9.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label9.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label9.Location = new System.Drawing.Point(16, 168);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(64, 23);
			this.label9.TabIndex = 23;
			this.label9.Text = "Portas";
			// 
			// label8
			// 
			this.label8.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label8.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label8.Location = new System.Drawing.Point(8, 88);
			this.label8.Name = "label8";
			this.label8.TabIndex = 22;
			this.label8.Text = "Adresas";
			// 
			// textBox3
			// 
			this.textBox3.Location = new System.Drawing.Point(16, 144);
			this.textBox3.Name = "textBox3";
			this.textBox3.Size = new System.Drawing.Size(72, 20);
			this.textBox3.TabIndex = 21;
			this.textBox3.Text = "3001";
			// 
			// textBox2
			// 
			this.textBox2.Location = new System.Drawing.Point(16, 120);
			this.textBox2.Name = "textBox2";
			this.textBox2.Size = new System.Drawing.Size(72, 20);
			this.textBox2.TabIndex = 20;
			this.textBox2.Text = "127.0.0.1";
			// 
			// label5
			// 
			this.label5.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(0)), ((System.Byte)(192)), ((System.Byte)(0)));
			this.label5.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label5.Location = new System.Drawing.Point(48, 24);
			this.label5.Name = "label5";
			this.label5.TabIndex = 24;
			this.label5.Text = "Serveris";
			// 
			// button5
			// 
			this.button5.BackColor = System.Drawing.Color.Aqua;
			this.button5.Location = new System.Drawing.Point(112, 144);
			this.button5.Name = "button5";
			this.button5.TabIndex = 25;
			this.button5.Text = "Siusti";
			this.button5.Click += new System.EventHandler(this.button5_Click);
			// 
			// button6
			// 
			this.button6.BackColor = System.Drawing.Color.Aqua;
			this.button6.Location = new System.Drawing.Point(112, 112);
			this.button6.Name = "button6";
			this.button6.TabIndex = 26;
			this.button6.Text = "Gauti";
			this.button6.Click += new System.EventHandler(this.button6_Click);
			// 
			// button7
			// 
			this.button7.Location = new System.Drawing.Point(0, 216);
			this.button7.Name = "button7";
			this.button7.Size = new System.Drawing.Size(56, 48);
			this.button7.TabIndex = 27;
			this.button7.Text = "Spresti";
			this.button7.Click += new System.EventHandler(this.button7_Click);
			// 
			// label6
			// 
			this.label6.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label6.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label6.Location = new System.Drawing.Point(16, 272);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(56, 23);
			this.label6.TabIndex = 28;
			this.label6.Text = "Isspresta:";
			// 
			// label7
			// 
			this.label7.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(0)));
			this.label7.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label7.Location = new System.Drawing.Point(88, 272);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(88, 23);
			this.label7.TabIndex = 29;
			this.label7.Text = "Nera duomenu";
			// 
			// label10
			// 
			this.label10.Location = new System.Drawing.Point(0, 192);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(40, 23);
			this.label10.TabIndex = 30;
			this.label10.Text = "0";
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(0, 0);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(32, 23);
			this.label11.TabIndex = 31;
			// 
			// Form3
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.ClientSize = new System.Drawing.Size(208, 302);
			this.Controls.Add(this.label11);
			this.Controls.Add(this.label10);
			this.Controls.Add(this.label7);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.button7);
			this.Controls.Add(this.button6);
			this.Controls.Add(this.button5);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.label9);
			this.Controls.Add(this.label8);
			this.Controls.Add(this.textBox3);
			this.Controls.Add(this.textBox2);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button4);
			this.Controls.Add(this.button3);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.button1);
			this.Name = "Form3";
			this.Text = "Sudoku";
			this.ResumeLayout(false);

		}
		#endregion

		private void button4_Click(object sender, System.EventArgs e)
		{
			try
			{
				if (open == true)
				{
					if (label3.Text == "Neuzimta")
					{
						label11.Text = "a1";
						byte[] byData1 = System.Text.Encoding.ASCII.GetBytes(label11.Text.ToString());
						server.Send (byData1);
						label11.Text = "dd";
					} 
					else 
					{
						MessageBox.Show("sesija nebaigta - negalima iseiti!!!");
					}
				} 
				else 
				{
					MessageBox.Show("blokuojama");
				}
				
			}
			catch (Exception ee)
			{
				MessageBox.Show ( ee.Message );
				server.Close();
				//serverWorker.Close();
				this.Close();
			}
		}

		private void button1_Click(object sender, System.EventArgs e)
		{
			if (open == true)
			{
				try
				{
					//create a new server socket
					server = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
					String ip  = textBox2.Text;
					String port = textBox3.Text;
					int  intPort = System.Convert.ToInt16 (port,10);
			
					System.Net.IPAddress	remoteIPAddress	 = System.Net.IPAddress.Parse(ip);
					System.Net.IPEndPoint	remoteEndPoint = new System.Net.IPEndPoint(remoteIPAddress, intPort);
					server.Connect(remoteEndPoint);
					string temp = label1.Text;
					label1.Text = "u" + label1.Text;
					byte[] byData = System.Text.Encoding.ASCII.GetBytes(label1.Text.ToString());
					server.Send (byData);
					label1.Text = temp;
					//start listening...
					//server.Listen (4);
					// create the call back for any incomming data
					//server.BeginAccept(new AsyncCallback ( OnConnectionMade ),null);
				}
				catch (Exception ee)
				{
					MessageBox.Show ( ee.Message );
				}
			} 
			else 
			{
				MessageBox.Show("blokuojama");
			}
		}

		/*private void OnConnectionMade(IAsyncResult asyn)
		{
			try
			{
				serverWorker = server.EndAccept (asyn); 
				WaitForData(serverWorker);
			}
			catch(Exception se)
			{
				MessageBox.Show ( se.Message );
			}
		}*/

		/*public void WaitForData(System.Net.Sockets.Socket soc)
		{
			try
			{
				if  ( pfnWorkerCallBack == null ) 
				{
					pfnWorkerCallBack = new AsyncCallback (OnDataReceived);
				}
				CSocketPacket theSocPkt = new CSocketPacket ();
				theSocPkt.thisSocket = soc;
				// now start to listen for any data...
				soc.BeginReceive (theSocPkt.dataBuffer ,0,theSocPkt.dataBuffer.Length ,SocketFlags.None,pfnWorkerCallBack,theSocPkt);
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message );
			}
		}*/

		/*public  void OnDataReceived(IAsyncResult asyn)
		{
			try
			{				
				CSocketPacket theSockId = (CSocketPacket)asyn.AsyncState ;
				//end receive...
				int iRx  = 0 ;
				iRx = theSockId.thisSocket.EndReceive (asyn);
				char[] chars = new char[iRx +  1];
				System.Text.Decoder d = System.Text.Encoding.UTF8.GetDecoder();
				int charLen = d.GetChars(theSockId.dataBuffer, 0, iRx, chars, 0);
				System.String szData = new System.String(chars);
				MessageBox.Show(szData);
				
				if (label10.Text == "0" && label3.Text == "Neuzimta")
				{
					//
					label10.Text = "1";
					label3.Text = "Ruosiasi";
					byte[] byData1 = System.Text.Encoding.ASCII.GetBytes(label10.Text.ToString());
					server.Send (byData1);
				} //else
				if (label3.Text == "Ruosiasi")
				{
					label3.Text = "Ispakuoja";
					//ispakuoja
					duomenys = szData;
						
					string s;
					int x = 0;
					int y = 1;
					for (int i=1;i<=81;i++)
					{
						x++;
						if (i==10){y=2; x=1;}
						if (i==19){y=3; x=1;}
						if (i==28){y=4; x=1;}
						if (i==37){y=5; x=1;}
						if (i==46){y=6; x=1;}
						if (i==55){y=7; x=1;}
						if (i==64){y=8; x=1;}
						if (i==73){y=9; x=1;}
						s = duomenys.Substring(i-1,1);
						ss.isorinis[x,y]=System.Convert.ToInt16(s);
					}
						
					label3.Text = "Pasiruoses";
					label10.Text = "0";
				}
				if (szData == "aa")
				{
					server.Close();
					serverWorker.Close();
					label10.Text = "0";
					label3.Text = "Neuzimtas";
					label7.Text = "Nera duomenu";
					if (label11.Text == "dd")
					{
						server.Close();
						serverWorker.Close();
						this.Close();
					}
				}

				WaitForData(serverWorker);
				
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message);
			}
		}*/

		//pagalbinis dalykas

		public class CSocketPacket
		{
			public System.Net.Sockets.Socket thisSocket;
			public byte[] dataBuffer = new byte[82];
		}

		private void button2_Click(object sender, System.EventArgs e)
		{
			if (open == true)
			{
				open = false;
				temp = label3.Text;
				label3.Text = "blokuojama";
			} 
			else 
			{
				open = true;
				label3.Text = temp;
			}
		}

		private void button3_Click(object sender, System.EventArgs e)
		{
			try 
			{
				if (open == true)
				{
					if (label3.Text == "Neuzimta")
					{
						label11.Text = "a1";
						byte[] byData1 = System.Text.Encoding.ASCII.GetBytes(label11.Text.ToString());
						server.Send (byData1);
					} 
					else 
					{
						MessageBox.Show("sesija nebaigta - negalima atsijungti!!!");
					}
				} 
				else 
				{
					MessageBox.Show("blokuojama");
				}
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message );
			}
		}

		private void button6_Click(object sender, System.EventArgs e)
		{
			if (open == true)
			{
				try
				{
					byte [] buffer = new byte[82];
					int iRx = server.Receive (buffer);
					char[] chars = new char[iRx];

					System.Text.Decoder d = System.Text.Encoding.UTF8.GetDecoder();
					int charLen = d.GetChars(buffer, 0, iRx, chars, 0);
					System.String szData = new System.String(chars);
					//label10.Text = szData;
					if (label10.Text == "0" && label3.Text == "Neuzimta")
					{
						//
						label10.Text = "1";
						label3.Text = "Ruosiasi";
						byte[] byData1 = System.Text.Encoding.ASCII.GetBytes(label10.Text.ToString());
						server.Send (byData1);
					} //else
					if (label3.Text == "Ruosiasi")
					{
						label3.Text = "Ispakuoja";
						//ispakuoja
						duomenys = szData;
						
						string s;
						int x = 0;
						int y = 1;
						for (int i=1;i<=81;i++)
						{
							x++;
							if (i==10){y=2; x=1;}
							if (i==19){y=3; x=1;}
							if (i==28){y=4; x=1;}
							if (i==37){y=5; x=1;}
							if (i==46){y=6; x=1;}
							if (i==55){y=7; x=1;}
							if (i==64){y=8; x=1;}
							if (i==73){y=9; x=1;}
							s = duomenys.Substring(i-1,1);
							ss.isorinis[x,y]=System.Convert.ToInt16(s);
						}
						if (label11.Text == "dd")
						{
							server.Close();
							//serverWorker.Close();
							this.Close();
						}
						
						label3.Text = "Pasiruoses";
						label10.Text = "0";
					}
					if (szData == "aa")
					{
						server.Close();
						label10.Text = "0";
						label3.Text = "Neuzimtas";
						label7.Text = "Nera duomenu";
					}
				}
				catch(Exception se)
				{
					MessageBox.Show (se.Message );
				}
			} 
			else 
			{
				MessageBox.Show("blokuojama");
			}
		}

		private void button7_Click(object sender, System.EventArgs e)
		{
			if (label3.Text == "Pasiruoses")
			{
				label3.Text = "Sprendziama";
				if (ss.Spresti() == true)
				{
					label7.Text = "Taip";
				} 
				else 
				{
					label7.Text = "Ne";
				}

				label3.Text = "Isspresta";
			} 
			else 
			{
				MessageBox.Show("Spresti negalima - duomenys neparuosti!");
			}
		}

		private void button5_Click(object sender, System.EventArgs e)
		{
			//pakuojama
			label3.Text = "Pakuoja";
			duomenys = "";
			string s;
			for (int y=1;y<=9;y++)
			{
				for (int x=1;x<=9;x++)
				{
					s = System.Convert.ToString(ss.isorinis[x,y]);
					duomenys = duomenys+s;
				}
			}	
			
			//refreshinama
			label3.Text = "Neuzimta";
			label7.Text = "Nera duomenu";
			ss = new Serveriui();
			
			//siunciama
			byte[] byData1 = System.Text.Encoding.ASCII.GetBytes(duomenys);
			server.Send (byData1);
		}

	}
}
