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

		//kortos
		private korta[] kortos = new korta[53]; 
		private korta[] kortosP1 = new korta[53];
		private korta[] kortosP2 = new korta[53];
		private korta koziris = new korta();
		private korta kortaP1 = new korta();
		private korta kortaP2 = new korta();
		private string Koziris;
		private bool pirmas;
		private bool antras;
		private bool pirmasPaejo;
		private bool antrasPaejo;
		private bool pirmasIma;
		private bool antrasIma;
		private bool pasibaige;
		private bool atsimusta;
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
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.Panel panel2;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.TextBox textBox1;
		private System.Windows.Forms.TextBox textBox2;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.Button button4;
		private System.Windows.Forms.Button button5;
		private System.Windows.Forms.Button button6;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.Label label12;
		private System.Windows.Forms.Label label13;
		private System.Windows.Forms.Label label14;
		private System.Windows.Forms.Label label15;
		private System.Windows.Forms.Label label16;
		private System.Windows.Forms.Label label17;
		private System.Windows.Forms.Label label19;
		private System.Windows.Forms.Label label20;

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
			this.panel1 = new System.Windows.Forms.Panel();
			this.label12 = new System.Windows.Forms.Label();
			this.button6 = new System.Windows.Forms.Button();
			this.button5 = new System.Windows.Forms.Button();
			this.label8 = new System.Windows.Forms.Label();
			this.label10 = new System.Windows.Forms.Label();
			this.textBox2 = new System.Windows.Forms.TextBox();
			this.panel2 = new System.Windows.Forms.Panel();
			this.label11 = new System.Windows.Forms.Label();
			this.button4 = new System.Windows.Forms.Button();
			this.button3 = new System.Windows.Forms.Button();
			this.textBox1 = new System.Windows.Forms.TextBox();
			this.label7 = new System.Windows.Forms.Label();
			this.label9 = new System.Windows.Forms.Label();
			this.label13 = new System.Windows.Forms.Label();
			this.label14 = new System.Windows.Forms.Label();
			this.label15 = new System.Windows.Forms.Label();
			this.label16 = new System.Windows.Forms.Label();
			this.label17 = new System.Windows.Forms.Label();
			this.label19 = new System.Windows.Forms.Label();
			this.label20 = new System.Windows.Forms.Label();
			this.panel1.SuspendLayout();
			this.panel2.SuspendLayout();
			this.SuspendLayout();
			// 
			// button1
			// 
			this.button1.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(128)), ((System.Byte)(128)), ((System.Byte)(255)));
			this.button1.Location = new System.Drawing.Point(16, 256);
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
			this.label2.Location = new System.Drawing.Point(136, 72);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(72, 23);
			this.label2.TabIndex = 2;
			this.label2.Text = "Zaidejo eile:";
			// 
			// label3
			// 
			this.label3.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(0)));
			this.label3.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label3.Location = new System.Drawing.Point(216, 72);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(64, 23);
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
			this.label6.Location = new System.Drawing.Point(216, 40);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(32, 23);
			this.label6.TabIndex = 6;
			// 
			// button2
			// 
			this.button2.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(128)), ((System.Byte)(128)), ((System.Byte)(255)));
			this.button2.Location = new System.Drawing.Point(168, 256);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(88, 23);
			this.button2.TabIndex = 7;
			this.button2.Text = "Zaisti is Naujo";
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// panel1
			// 
			this.panel1.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(224)), ((System.Byte)(192)));
			this.panel1.Controls.Add(this.label12);
			this.panel1.Controls.Add(this.button6);
			this.panel1.Controls.Add(this.button5);
			this.panel1.Controls.Add(this.label8);
			this.panel1.Controls.Add(this.label10);
			this.panel1.Controls.Add(this.textBox2);
			this.panel1.Location = new System.Drawing.Point(464, 8);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(160, 280);
			this.panel1.TabIndex = 8;
			// 
			// label12
			// 
			this.label12.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label12.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label12.Location = new System.Drawing.Point(80, 8);
			this.label12.Name = "label12";
			this.label12.Size = new System.Drawing.Size(72, 23);
			this.label12.TabIndex = 14;
			this.label12.Text = "Zaidejas 2";
			// 
			// button6
			// 
			this.button6.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(0)), ((System.Byte)(192)), ((System.Byte)(0)));
			this.button6.Location = new System.Drawing.Point(64, 168);
			this.button6.Name = "button6";
			this.button6.TabIndex = 13;
			this.button6.Text = "baigti ejima";
			this.button6.Click += new System.EventHandler(this.button6_Click);
			// 
			// button5
			// 
			this.button5.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(0)), ((System.Byte)(192)), ((System.Byte)(0)));
			this.button5.Location = new System.Drawing.Point(64, 136);
			this.button5.Name = "button5";
			this.button5.TabIndex = 12;
			this.button5.Text = "Zaisti korta";
			this.button5.Click += new System.EventHandler(this.button5_Click);
			// 
			// label8
			// 
			this.label8.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label8.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label8.Location = new System.Drawing.Point(8, 0);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(48, 280);
			this.label8.TabIndex = 10;
			// 
			// label10
			// 
			this.label10.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label10.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label10.Location = new System.Drawing.Point(64, 80);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(72, 23);
			this.label10.TabIndex = 10;
			this.label10.Text = "Kortos Nr.";
			// 
			// textBox2
			// 
			this.textBox2.Location = new System.Drawing.Point(64, 112);
			this.textBox2.Name = "textBox2";
			this.textBox2.Size = new System.Drawing.Size(40, 20);
			this.textBox2.TabIndex = 11;
			this.textBox2.Text = "";
			// 
			// panel2
			// 
			this.panel2.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(224)), ((System.Byte)(192)));
			this.panel2.Controls.Add(this.label11);
			this.panel2.Controls.Add(this.button4);
			this.panel2.Controls.Add(this.button3);
			this.panel2.Controls.Add(this.textBox1);
			this.panel2.Controls.Add(this.label7);
			this.panel2.Controls.Add(this.label9);
			this.panel2.Location = new System.Drawing.Point(296, 8);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(160, 280);
			this.panel2.TabIndex = 0;
			// 
			// label11
			// 
			this.label11.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label11.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label11.Location = new System.Drawing.Point(80, 8);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(72, 23);
			this.label11.TabIndex = 13;
			this.label11.Text = "Zaidejas 1";
			// 
			// button4
			// 
			this.button4.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(0)), ((System.Byte)(192)), ((System.Byte)(0)));
			this.button4.Location = new System.Drawing.Point(64, 168);
			this.button4.Name = "button4";
			this.button4.TabIndex = 12;
			this.button4.Text = "baigti ejima";
			this.button4.Click += new System.EventHandler(this.button4_Click);
			// 
			// button3
			// 
			this.button3.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(0)), ((System.Byte)(192)), ((System.Byte)(0)));
			this.button3.Location = new System.Drawing.Point(64, 136);
			this.button3.Name = "button3";
			this.button3.TabIndex = 11;
			this.button3.Text = "Zaisti korta";
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// textBox1
			// 
			this.textBox1.Location = new System.Drawing.Point(64, 112);
			this.textBox1.Name = "textBox1";
			this.textBox1.Size = new System.Drawing.Size(40, 20);
			this.textBox1.TabIndex = 10;
			this.textBox1.Text = "";
			// 
			// label7
			// 
			this.label7.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label7.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label7.Location = new System.Drawing.Point(8, 0);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(48, 280);
			this.label7.TabIndex = 9;
			// 
			// label9
			// 
			this.label9.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label9.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label9.Location = new System.Drawing.Point(64, 80);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(72, 23);
			this.label9.TabIndex = 9;
			this.label9.Text = "Kortos Nr.";
			// 
			// label13
			// 
			this.label13.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(0)));
			this.label13.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label13.Location = new System.Drawing.Point(24, 8);
			this.label13.Name = "label13";
			this.label13.Size = new System.Drawing.Size(64, 23);
			this.label13.TabIndex = 9;
			this.label13.Text = "Laimejo:";
			// 
			// label14
			// 
			this.label14.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label14.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label14.Location = new System.Drawing.Point(24, 104);
			this.label14.Name = "label14";
			this.label14.Size = new System.Drawing.Size(64, 23);
			this.label14.TabIndex = 14;
			this.label14.Text = "Zaidejas 1";
			// 
			// label15
			// 
			this.label15.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label15.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label15.Location = new System.Drawing.Point(168, 104);
			this.label15.Name = "label15";
			this.label15.Size = new System.Drawing.Size(64, 23);
			this.label15.TabIndex = 15;
			this.label15.Text = "Zaidejas 2";
			// 
			// label16
			// 
			this.label16.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label16.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label16.Location = new System.Drawing.Point(24, 136);
			this.label16.Name = "label16";
			this.label16.Size = new System.Drawing.Size(56, 40);
			this.label16.TabIndex = 14;
			// 
			// label17
			// 
			this.label17.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label17.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label17.Location = new System.Drawing.Point(168, 136);
			this.label17.Name = "label17";
			this.label17.Size = new System.Drawing.Size(56, 40);
			this.label17.TabIndex = 16;
			// 
			// label19
			// 
			this.label19.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label19.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label19.Location = new System.Drawing.Point(16, 40);
			this.label19.Name = "label19";
			this.label19.Size = new System.Drawing.Size(80, 23);
			this.label19.TabIndex = 18;
			this.label19.Text = "Kortu kaladeje";
			// 
			// label20
			// 
			this.label20.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label20.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label20.Location = new System.Drawing.Point(112, 40);
			this.label20.Name = "label20";
			this.label20.Size = new System.Drawing.Size(40, 23);
			this.label20.TabIndex = 19;
			// 
			// Form1
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
			this.ClientSize = new System.Drawing.Size(704, 302);
			this.Controls.Add(this.label20);
			this.Controls.Add(this.label19);
			this.Controls.Add(this.label17);
			this.Controls.Add(this.label15);
			this.Controls.Add(this.label14);
			this.Controls.Add(this.label13);
			this.Controls.Add(this.panel1);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button1);
			this.Controls.Add(this.panel2);
			this.Controls.Add(this.label16);
			this.Name = "Form1";
			this.Text = "Stalas";
			this.panel1.ResumeLayout(false);
			this.panel2.ResumeLayout(false);
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

				label20.Text = System.Convert.ToString(kortuKaladeje);
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
				duotiP1();
				duotiP2();
			}
			perpaisytiP1();
			perpaisytiP2();
			//traukti koziri 
			koziris = kortos[kortuKaladeje];
			Koziris = koziris.rusis;
			korta temp = kortos[1];
			kortos[1] = kortos[kortuKaladeje];
			kortos[kortuKaladeje] = temp;
			label6.Text = Koziris;
			label20.Text = System.Convert.ToString(kortuKaladeje);
		}

		private void duotiP1()
		{
			korta temp = kortos[kortuKaladeje];
			kortos[kortuKaladeje] = null;
			kortuKaladeje--;
			label20.Text = System.Convert.ToString(kortuKaladeje);
			kortuP1rankoje++;
			kortosP1[kortuP1rankoje] = temp;
			/*if (System.Convert.ToString(temp.skaicius).Substring(0,1) == "1")
			{
				label7.Text = label7.Text + System.Convert.ToString(kortuP1rankoje) + " " + System.Convert.ToString(temp.skaicius) + " " + temp.rusis + "   ";
			} 
			else 
			{
				label7.Text = label7.Text + System.Convert.ToString(kortuP1rankoje) + "  " + System.Convert.ToString(temp.skaicius) + " " + temp.rusis + "   ";
			}*/
		}

		private void duotiP2()
		{
			korta temp = kortos[kortuKaladeje];
			kortos[kortuKaladeje] = null;
			kortuKaladeje--;
			label20.Text = System.Convert.ToString(kortuKaladeje);
			kortuP2rankoje++;
			kortosP2[kortuP2rankoje] = temp;
			/*if (System.Convert.ToString(temp.skaicius).Substring(0,1) == "1")
			{
				label8.Text = label8.Text + System.Convert.ToString(kortuP2rankoje) + " " + System.Convert.ToString(temp.skaicius) + " " + temp.rusis + "   ";
			} 
			else 
			{
				label8.Text = label8.Text + System.Convert.ToString(kortuP2rankoje) + "  " + System.Convert.ToString(temp.skaicius) + " " + temp.rusis + "   ";
			}*/
		}

		private void nusprestiEiliskuma()
		{
			Random random = new Random();
			if (random.Next(2) == 0)
			{
				pirmas = true;
				antras = false;
				label3.Text = "Zaidejas 1";
			} 
			else 
			{
				pirmas = false;
				antras = true;
				label3.Text = "Zaidejas 2";
			}
		}

		//pagalbiniai

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
			label7.Text = "";
			label8.Text = "";
			label16.Text = "";
			label17.Text = "";
			label1.Text = "";
			kortaP1 = null;
		    kortaP2 = null;
			pirmas = false;
			antras = false;
			pirmasPaejo = false;
			antrasPaejo = false;
			pasibaige = false;
			kurtiKortas();
			maisytiKortas();
			dalintiKortas();
			nusprestiEiliskuma();
		}

		private void vykdytiVeiksma()
		{
			//lyginti kortas

			//pirmas pradejo, antras atsimusineja
			if (antrasIma == true)
			{
				kortaP2 = kortaP1;
			}
			if (pirmasIma == true)
			{
				kortaP1 = kortaP2;
			}

			//jei tos pacios rusies
			if (kortaP1.rusis == kortaP2.rusis && pirmas == true && kortaP2 != kortaP1)
			{
				if (kortaP1.skaicius < kortaP2.skaicius)
				{
					//antras atsimusa
					label3.Text = "Zaidejas 2";
					pirmas = false;
					antras = true;
					atsimusta = true;
				} else
				if (kortaP1.skaicius > kortaP2.skaicius) 
				{
					//antras ima
					kortuP2rankoje++;
					kortosP2[kortuP2rankoje] = kortaP1;
					kortuP2rankoje++;
					kortosP2[kortuP2rankoje] = kortaP2;
				} 
			} else

			//jei skirtingu rusiu ir koziris
			if (kortaP1.rusis != kortaP2.rusis && pirmas == true && kortaP2 != kortaP1 && kortaP2.rusis == Koziris)
			{
				//antras atsimusa
				label3.Text = "Zaidejas 2";
				pirmas = false;
				antras = true;
				atsimusta = true;
			} else 

			//jei skirtingu rusiu
			if (kortaP1.rusis != kortaP2.rusis && pirmas == true && kortaP2 != kortaP1)
			{
				//antras ima
				kortuP2rankoje++;
				kortosP2[kortuP2rankoje] = kortaP1;
				kortuP2rankoje++;
				kortosP2[kortuP2rankoje] = kortaP2;
			}
			
			//antras ima nes neatsimus
			if (antrasIma == true && kortaP2 == kortaP1) 
			{
				kortuP2rankoje++;
				kortosP2[kortuP2rankoje] = kortaP1;
			}
			
			if (atsimusta == false)
			{

				//antras pradejo, pirmas atsimusineja
			

				//jei tos pacios rusies
				if (kortaP1.rusis == kortaP2.rusis && antras == true && kortaP2 != kortaP1)
				{
					if (kortaP1.skaicius > kortaP2.skaicius)
					{
						//pirmas atsimusa
						label3.Text = "Zaidejas 1";
						pirmas = true;
						antras = false;
					} 
					else
						if (kortaP1.skaicius < kortaP2.skaicius) 
					{
						//pirmas ima
						kortuP1rankoje++;
						kortosP1[kortuP1rankoje] = kortaP2;
						kortuP1rankoje++;
						kortosP1[kortuP1rankoje] = kortaP1;
					} 
				} 
				else

					//jei skirtingu rusiu ir koziris
					if (kortaP1.rusis != kortaP2.rusis && antras == true && kortaP2 != kortaP1 && kortaP1.rusis == Koziris)
				{
					//pirmas atsimusa
					label3.Text = "Zaidejas 1";
					pirmas = true;
					antras = false;
				} 
				else

					//jei skirtingu rusiu
					if (kortaP1.rusis != kortaP2.rusis && antras == true && kortaP2 != kortaP1)
				{
					//pirmas ima
					kortuP1rankoje++;
					kortosP1[kortuP1rankoje] = kortaP2;
					kortuP1rankoje++;
					kortosP1[kortuP1rankoje] = kortaP1;
				}
			
				//pirmas ima nes neatsimus
				if (pirmasIma == true && kortaP2 == kortaP1) 
				{
					kortuP1rankoje++;
					kortosP1[kortuP1rankoje] = kortaP2;
				}
			
			}
			atsimusta = false;

			//abu vel nepaeje
			label16.Text = "";
			label17.Text = "";
			pirmasPaejo = false;
			antrasPaejo = false;
			pirmasIma = false;
			antrasIma = false;
			kortaP1 = null;
			kortaP2 = null;
			//dalinti kortas
			if (kortuP1rankoje<6 && kortuKaladeje!=0 && pirmas == true)
			{
				int kiekis = 6-kortuP1rankoje;
				for (int i = 1; i <= kiekis; i++)
				{
					//duoti korta is kalades
					kortuP1rankoje++;
					kortosP1[kortuP1rankoje] = kortos[kortuKaladeje];
					kortos[kortuKaladeje] = null;
					kortuKaladeje--;
				}
				label20.Text = System.Convert.ToString(kortuKaladeje);
			}
			if (kortuP2rankoje<6 && kortuKaladeje!=0)
			{
				int kiekis = 6-kortuP2rankoje;
				for (int i = 1; i <= kiekis; i++)
				{
					//duoti korta is kalades
					kortuP2rankoje++;
					kortosP2[kortuP2rankoje] = kortos[kortuKaladeje];
					kortos[kortuKaladeje] = null;
					kortuKaladeje--;
				}
				label20.Text = System.Convert.ToString(kortuKaladeje);
			}
			if (kortuP1rankoje<6 && kortuKaladeje!=0 && pirmas == false)
			{
				int kiekis = 6-kortuP1rankoje;
				for (int i = 1; i <= kiekis; i++)
				{
					//duoti korta is kalades
					kortuP1rankoje++;
					kortosP1[kortuP1rankoje] = kortos[kortuKaladeje];
					kortos[kortuKaladeje] = null;
					kortuKaladeje--;
				}
				label20.Text = System.Convert.ToString(kortuKaladeje);
			}
			perpaisytiP1();
			perpaisytiP2();
			//ar laimejo kas?
			if (kortuP1rankoje == 0 && kortuP2rankoje == 0 && kortuKaladeje == 0)
			{
				pasibaige = true;
				label1.Text = "As";
				MessageBox.Show("Issiduriau :) :P");
			} 
			else if (kortuP1rankoje == 0 && kortuKaladeje == 0)
			{
				pasibaige = true;
				label1.Text = "Zaidejas 1";
				MessageBox.Show("Laimejo Zaidejas 1!!!");
			} 
			else if (kortuP2rankoje == 0 && kortuKaladeje == 0)
			{
				pasibaige = true;
				label1.Text = "Zaidejas 2";
				MessageBox.Show("Laimejo Zaidejas 2!!!");
			}
	}

	private void perpaisytiP1()
		{
			label7.Text = "";
			for (int i = 1; i <= kortuP1rankoje; i++)
			{
				if (System.Convert.ToString(kortosP1[i].skaicius).Substring(0,1) == "1")
				{
					label7.Text = label7.Text + System.Convert.ToString(i) + " " + System.Convert.ToString(kortosP1[i].skaicius) + " " + kortosP1[i].rusis + "   ";
				} 
				else 
				{
					label7.Text = label7.Text + System.Convert.ToString(i) + "  " + System.Convert.ToString(kortosP1[i].skaicius) + " " + kortosP1[i].rusis + "   ";
				}
			}
		}

		private void perpaisytiP2()
		{
			label8.Text = "";
			for (int i = 1; i <= kortuP2rankoje; i++)
			{
				if (System.Convert.ToString(kortosP2[i].skaicius).Substring(0,1) == "1")
				{
					label8.Text = label8.Text + System.Convert.ToString(i) + " " + System.Convert.ToString(kortosP2[i].skaicius) + " " + kortosP2[i].rusis + "   ";
				} 
				else 
				{
					label8.Text = label8.Text + System.Convert.ToString(i) + "  " + System.Convert.ToString(kortosP2[i].skaicius) + " " + kortosP2[i].rusis + "   ";
				}
			}
		}

		private void button3_Click(object sender, System.EventArgs e)
		{
			try 
			{
				if (pirmas == true && pirmasPaejo == false && pasibaige == false)
				{
					int index = System.Convert.ToInt16(textBox1.Text);
					//MessageBox.Show(System.Convert.ToString(index));
					if (index>0 && index<=kortuP1rankoje)
					{
						//isimti ir padeti ant stalo:
						kortaP1 = kortosP1[index];
						//sunaikinti irasa
						kortosP1[index] = kortosP1[kortuP1rankoje];
						kortosP1[kortuP1rankoje] = null;
						kortuP1rankoje--;
						//perpaisyti
						perpaisytiP1();
						//atvaizduoti
						label16.Text = System.Convert.ToString(kortaP1.skaicius) + " " + kortaP1.rusis;
						pirmasPaejo = true;
						//perduoti ejima
						label3.Text = "Zaidejas 2";
						pirmas = false;
						antras = true;
						//ar abu paejo?
						if (pirmasPaejo == true && antrasPaejo == true)
						{
							vykdytiVeiksma();
						}
											 
					} 
					else 
					{
						MessageBox.Show("Netesingas indeksas! Bandyti is naujo!");
					}
				}
			} 
			catch (Exception ee)
			{
				MessageBox.Show(ee.ToString());
			}
		}

		private void button4_Click(object sender, System.EventArgs e)
		{
			if (pirmas == true && pirmasPaejo == false && pasibaige == false && antrasPaejo == true)
			{
				pirmasPaejo = true;
				label3.Text = "Zaidejas 2";
				pirmas = false;
				antras = true;
				pirmasIma = true;
				if (pirmasPaejo == true && antrasPaejo == true)
				{
					vykdytiVeiksma();
				}
				
			}
		}

		private void button6_Click(object sender, System.EventArgs e)
		{
			if (antras == true && antrasPaejo == false && pasibaige == false && pirmasPaejo == true)
			{
				antrasPaejo = true;
				label3.Text = "Zaidejas 1";
				pirmas = true;
				antras = false;
				antrasIma = true;
				if (pirmasPaejo == true && antrasPaejo == true)
				{
					vykdytiVeiksma();
				}
				
			}
		}

		private void button5_Click(object sender, System.EventArgs e)
		{
			try 
			{
				if (antras == true && antrasPaejo == false && pasibaige == false)
				{
					int index = System.Convert.ToInt16(textBox2.Text);
					//MessageBox.Show(System.Convert.ToString(index));
					if (index>0 && index<=kortuP2rankoje)
					{
						//isimti ir padeti ant stalo:
						kortaP2 = kortosP2[index];
						//sunaikinti irasa
						kortosP2[index] = kortosP2[kortuP2rankoje];
						kortosP2[kortuP2rankoje] = null;
						kortuP2rankoje--;
						//perpaisyti
						perpaisytiP2();
						//atvaizduoti
						label17.Text = System.Convert.ToString(kortaP2.skaicius) + " " + kortaP2.rusis;
						antrasPaejo = true;
						//perduoti ejima
						label3.Text = "Zaidejas 1";
						pirmas = true;
						antras = false;
						//ar abu paejo?
						if (pirmasPaejo == true && antrasPaejo == true)
						{
							vykdytiVeiksma();
						}
											 
					} 
					else 
					{
						MessageBox.Show("Netesingas indeksas! Bandyti is naujo!");
					}
				}
			} 
			catch (Exception ee)
			{
				MessageBox.Show(ee.ToString());
			}
		}
	}
}
