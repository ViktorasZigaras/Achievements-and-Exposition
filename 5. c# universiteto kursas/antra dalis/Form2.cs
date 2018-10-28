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
	/// Summary description for Form2.
	/// </summary>
	public class Form2 : System.Windows.Forms.Form
	{
		private Socket socListenerK1;
		private Socket socListenerS1;
		private AsyncCallback pfnWorkerCallBackK1;
		private AsyncCallback pfnWorkerCallBackS1;
		private Socket socWorkerK1;
		private Socket socWorkerS1;
		private int yraServeriu = 0;
		private Sesija sesija1 = new Sesija(0,0,"");
		private Sesija sesija2 = new Sesija(0,0,"");
		private Sesija sesija3 = new Sesija(0,0,"");
		private Sesija sesija4 = new Sesija(0,0,"");
		private Sesija sesija5 = new Sesija(0,0,"");
		private System.Windows.Forms.Button button5;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.Label label12;
		private System.Windows.Forms.Label label13;
		private System.Windows.Forms.Label label14;
		private System.Windows.Forms.Label label15;
		private System.Windows.Forms.Label label16;
		private System.Windows.Forms.Label label17;
		private System.Windows.Forms.Label label18;
		private System.Windows.Forms.Label label19;
		private System.Windows.Forms.Label label20;
		private System.Windows.Forms.Label label21;
		private System.Windows.Forms.Label label22;
		private System.Windows.Forms.Label label23;
		private System.Windows.Forms.Label label24;
		private System.Windows.Forms.Label label25;
		private System.Windows.Forms.Label label26;
		private System.Windows.Forms.Label label27;
		private System.Windows.Forms.Label label28;
		private System.Windows.Forms.Label label29;
		private System.Windows.Forms.Label label30;
		private System.Windows.Forms.Label label31;
		private System.Windows.Forms.Label label32;
		private System.Windows.Forms.Label label33;
		private System.Windows.Forms.Label label34;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.Label label35;
		private System.Windows.Forms.Label label36;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label37;
		private System.Windows.Forms.Label label38;
		private System.Windows.Forms.Label label39;
		private System.Windows.Forms.Label label40;
		private System.Windows.Forms.Label label41;
		private System.Windows.Forms.Label label42;
		private System.Windows.Forms.Label label43;
		private System.Windows.Forms.Label label44;
		private System.Windows.Forms.Label label45;
		private System.Windows.Forms.Label label46;
		private System.Windows.Forms.Label label47;
		private System.Windows.Forms.Label label48;
		private System.Windows.Forms.Label label49;
		private System.Windows.Forms.Label label50;
		private System.Windows.Forms.Label label51;
		private System.Windows.Forms.Label label52;
		private System.Windows.Forms.Label label53;
		private System.Windows.Forms.Label label54;
		private System.Windows.Forms.Label label55;
		private System.Windows.Forms.Label label56;
		private System.Windows.Forms.Label label57;
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

			kurtiPortaK1();
			kurtiPortaS1();

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
			this.button5 = new System.Windows.Forms.Button();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.label11 = new System.Windows.Forms.Label();
			this.label12 = new System.Windows.Forms.Label();
			this.label13 = new System.Windows.Forms.Label();
			this.label14 = new System.Windows.Forms.Label();
			this.label15 = new System.Windows.Forms.Label();
			this.label16 = new System.Windows.Forms.Label();
			this.label17 = new System.Windows.Forms.Label();
			this.label18 = new System.Windows.Forms.Label();
			this.label19 = new System.Windows.Forms.Label();
			this.label20 = new System.Windows.Forms.Label();
			this.label21 = new System.Windows.Forms.Label();
			this.label22 = new System.Windows.Forms.Label();
			this.label23 = new System.Windows.Forms.Label();
			this.label24 = new System.Windows.Forms.Label();
			this.label25 = new System.Windows.Forms.Label();
			this.label26 = new System.Windows.Forms.Label();
			this.label27 = new System.Windows.Forms.Label();
			this.label28 = new System.Windows.Forms.Label();
			this.label29 = new System.Windows.Forms.Label();
			this.label30 = new System.Windows.Forms.Label();
			this.label31 = new System.Windows.Forms.Label();
			this.label32 = new System.Windows.Forms.Label();
			this.label33 = new System.Windows.Forms.Label();
			this.label34 = new System.Windows.Forms.Label();
			this.label8 = new System.Windows.Forms.Label();
			this.label9 = new System.Windows.Forms.Label();
			this.label10 = new System.Windows.Forms.Label();
			this.label35 = new System.Windows.Forms.Label();
			this.label36 = new System.Windows.Forms.Label();
			this.label7 = new System.Windows.Forms.Label();
			this.label37 = new System.Windows.Forms.Label();
			this.label38 = new System.Windows.Forms.Label();
			this.label39 = new System.Windows.Forms.Label();
			this.label40 = new System.Windows.Forms.Label();
			this.label41 = new System.Windows.Forms.Label();
			this.label42 = new System.Windows.Forms.Label();
			this.label43 = new System.Windows.Forms.Label();
			this.label44 = new System.Windows.Forms.Label();
			this.label45 = new System.Windows.Forms.Label();
			this.label46 = new System.Windows.Forms.Label();
			this.label47 = new System.Windows.Forms.Label();
			this.label48 = new System.Windows.Forms.Label();
			this.label49 = new System.Windows.Forms.Label();
			this.label50 = new System.Windows.Forms.Label();
			this.label51 = new System.Windows.Forms.Label();
			this.label52 = new System.Windows.Forms.Label();
			this.label53 = new System.Windows.Forms.Label();
			this.label54 = new System.Windows.Forms.Label();
			this.label55 = new System.Windows.Forms.Label();
			this.label56 = new System.Windows.Forms.Label();
			this.label57 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// button5
			// 
			this.button5.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(128)), ((System.Byte)(128)), ((System.Byte)(255)));
			this.button5.Location = new System.Drawing.Point(16, 200);
			this.button5.Name = "button5";
			this.button5.TabIndex = 5;
			this.button5.Text = "Išeiti";
			this.button5.Click += new System.EventHandler(this.button5_Click);
			// 
			// label1
			// 
			this.label1.BackColor = System.Drawing.Color.Lime;
			this.label1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label1.Location = new System.Drawing.Point(24, 232);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(72, 23);
			this.label1.TabIndex = 20;
			this.label1.Text = "Sesijos";
			// 
			// label2
			// 
			this.label2.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label2.Location = new System.Drawing.Point(24, 256);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(40, 16);
			this.label2.TabIndex = 21;
			this.label2.Text = "1 - 0";
			// 
			// label3
			// 
			this.label3.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label3.Location = new System.Drawing.Point(16, 8);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(48, 32);
			this.label3.TabIndex = 22;
			this.label3.Text = "Kliento portai";
			// 
			// label4
			// 
			this.label4.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label4.Location = new System.Drawing.Point(16, 48);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(32, 23);
			this.label4.TabIndex = 23;
			this.label4.Text = "Nr.";
			// 
			// label5
			// 
			this.label5.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label5.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label5.Location = new System.Drawing.Point(56, 48);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(80, 23);
			this.label5.TabIndex = 24;
			this.label5.Text = "Prisijunges ID";
			// 
			// label6
			// 
			this.label6.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label6.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label6.Location = new System.Drawing.Point(336, 8);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(48, 32);
			this.label6.TabIndex = 25;
			this.label6.Text = "Serverio portai";
			// 
			// label11
			// 
			this.label11.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label11.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label11.Location = new System.Drawing.Point(216, 48);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(32, 23);
			this.label11.TabIndex = 26;
			this.label11.Text = "Nr.";
			// 
			// label12
			// 
			this.label12.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label12.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label12.Location = new System.Drawing.Point(256, 48);
			this.label12.Name = "label12";
			this.label12.Size = new System.Drawing.Size(80, 23);
			this.label12.TabIndex = 27;
			this.label12.Text = "Prisijunges ID";
			// 
			// label13
			// 
			this.label13.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label13.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label13.Location = new System.Drawing.Point(16, 72);
			this.label13.Name = "label13";
			this.label13.Size = new System.Drawing.Size(48, 23);
			this.label13.TabIndex = 28;
			this.label13.Text = "1 (2001)";
			// 
			// label14
			// 
			this.label14.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label14.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label14.Location = new System.Drawing.Point(16, 96);
			this.label14.Name = "label14";
			this.label14.Size = new System.Drawing.Size(48, 23);
			this.label14.TabIndex = 29;
			this.label14.Text = "2 (2002)";
			// 
			// label15
			// 
			this.label15.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label15.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label15.Location = new System.Drawing.Point(16, 120);
			this.label15.Name = "label15";
			this.label15.Size = new System.Drawing.Size(48, 23);
			this.label15.TabIndex = 30;
			this.label15.Text = "3 (2003)";
			// 
			// label16
			// 
			this.label16.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label16.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label16.Location = new System.Drawing.Point(16, 144);
			this.label16.Name = "label16";
			this.label16.Size = new System.Drawing.Size(48, 23);
			this.label16.TabIndex = 31;
			this.label16.Text = "4 (2004)";
			// 
			// label17
			// 
			this.label17.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label17.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label17.Location = new System.Drawing.Point(16, 168);
			this.label17.Name = "label17";
			this.label17.Size = new System.Drawing.Size(48, 23);
			this.label17.TabIndex = 32;
			this.label17.Text = "5 (2005)";
			// 
			// label18
			// 
			this.label18.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label18.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label18.Location = new System.Drawing.Point(120, 72);
			this.label18.Name = "label18";
			this.label18.Size = new System.Drawing.Size(64, 23);
			this.label18.TabIndex = 33;
			this.label18.Text = "Laisva";
			// 
			// label19
			// 
			this.label19.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label19.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label19.Location = new System.Drawing.Point(120, 96);
			this.label19.Name = "label19";
			this.label19.Size = new System.Drawing.Size(64, 23);
			this.label19.TabIndex = 34;
			this.label19.Text = "Laisva";
			// 
			// label20
			// 
			this.label20.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label20.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label20.Location = new System.Drawing.Point(120, 120);
			this.label20.Name = "label20";
			this.label20.Size = new System.Drawing.Size(64, 23);
			this.label20.TabIndex = 35;
			this.label20.Text = "Laisva";
			// 
			// label21
			// 
			this.label21.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label21.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label21.Location = new System.Drawing.Point(120, 144);
			this.label21.Name = "label21";
			this.label21.Size = new System.Drawing.Size(64, 23);
			this.label21.TabIndex = 36;
			this.label21.Text = "Laisva";
			// 
			// label22
			// 
			this.label22.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label22.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label22.Location = new System.Drawing.Point(120, 168);
			this.label22.Name = "label22";
			this.label22.Size = new System.Drawing.Size(64, 23);
			this.label22.TabIndex = 37;
			this.label22.Text = "Laisva";
			// 
			// label23
			// 
			this.label23.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label23.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label23.Location = new System.Drawing.Point(216, 72);
			this.label23.Name = "label23";
			this.label23.Size = new System.Drawing.Size(48, 23);
			this.label23.TabIndex = 38;
			this.label23.Text = "1 (3001)";
			// 
			// label24
			// 
			this.label24.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label24.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label24.Location = new System.Drawing.Point(216, 96);
			this.label24.Name = "label24";
			this.label24.Size = new System.Drawing.Size(48, 23);
			this.label24.TabIndex = 39;
			this.label24.Text = "2 (3002)";
			// 
			// label25
			// 
			this.label25.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label25.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label25.Location = new System.Drawing.Point(216, 120);
			this.label25.Name = "label25";
			this.label25.Size = new System.Drawing.Size(48, 23);
			this.label25.TabIndex = 40;
			this.label25.Text = "3 (3003)";
			// 
			// label26
			// 
			this.label26.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label26.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label26.Location = new System.Drawing.Point(216, 144);
			this.label26.Name = "label26";
			this.label26.Size = new System.Drawing.Size(48, 23);
			this.label26.TabIndex = 41;
			this.label26.Text = "4 (3004)";
			// 
			// label27
			// 
			this.label27.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label27.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label27.Location = new System.Drawing.Point(216, 168);
			this.label27.Name = "label27";
			this.label27.Size = new System.Drawing.Size(48, 23);
			this.label27.TabIndex = 42;
			this.label27.Text = "5 (3005)";
			// 
			// label28
			// 
			this.label28.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label28.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label28.Location = new System.Drawing.Point(320, 72);
			this.label28.Name = "label28";
			this.label28.Size = new System.Drawing.Size(64, 23);
			this.label28.TabIndex = 43;
			this.label28.Text = "Laisva";
			// 
			// label29
			// 
			this.label29.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label29.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label29.Location = new System.Drawing.Point(320, 96);
			this.label29.Name = "label29";
			this.label29.Size = new System.Drawing.Size(64, 23);
			this.label29.TabIndex = 44;
			this.label29.Text = "Laisva";
			// 
			// label30
			// 
			this.label30.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label30.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label30.Location = new System.Drawing.Point(320, 120);
			this.label30.Name = "label30";
			this.label30.Size = new System.Drawing.Size(64, 23);
			this.label30.TabIndex = 45;
			this.label30.Text = "Laisva";
			// 
			// label31
			// 
			this.label31.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label31.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label31.Location = new System.Drawing.Point(320, 144);
			this.label31.Name = "label31";
			this.label31.Size = new System.Drawing.Size(64, 23);
			this.label31.TabIndex = 46;
			this.label31.Text = "Laisva";
			// 
			// label32
			// 
			this.label32.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.label32.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label32.Location = new System.Drawing.Point(320, 168);
			this.label32.Name = "label32";
			this.label32.Size = new System.Drawing.Size(64, 23);
			this.label32.TabIndex = 47;
			this.label32.Text = "Laisva";
			// 
			// label33
			// 
			this.label33.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(192)), ((System.Byte)(0)));
			this.label33.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label33.Location = new System.Drawing.Point(160, 8);
			this.label33.Name = "label33";
			this.label33.TabIndex = 48;
			this.label33.Text = "Routeris";
			// 
			// label34
			// 
			this.label34.Location = new System.Drawing.Point(184, 72);
			this.label34.Name = "label34";
			this.label34.Size = new System.Drawing.Size(24, 23);
			this.label34.TabIndex = 49;
			this.label34.Text = "0";
			// 
			// label8
			// 
			this.label8.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label8.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label8.Location = new System.Drawing.Point(64, 96);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(56, 23);
			this.label8.TabIndex = 52;
			// 
			// label9
			// 
			this.label9.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label9.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label9.Location = new System.Drawing.Point(64, 120);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(56, 23);
			this.label9.TabIndex = 53;
			// 
			// label10
			// 
			this.label10.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label10.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label10.Location = new System.Drawing.Point(64, 144);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(56, 23);
			this.label10.TabIndex = 54;
			// 
			// label35
			// 
			this.label35.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label35.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label35.Location = new System.Drawing.Point(64, 168);
			this.label35.Name = "label35";
			this.label35.Size = new System.Drawing.Size(56, 23);
			this.label35.TabIndex = 55;
			// 
			// label36
			// 
			this.label36.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label36.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label36.Location = new System.Drawing.Point(136, 48);
			this.label36.Name = "label36";
			this.label36.Size = new System.Drawing.Size(48, 23);
			this.label36.TabIndex = 56;
			this.label36.Text = "Busena";
			// 
			// label7
			// 
			this.label7.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label7.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label7.Location = new System.Drawing.Point(64, 72);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(56, 23);
			this.label7.TabIndex = 51;
			// 
			// label37
			// 
			this.label37.Location = new System.Drawing.Point(184, 168);
			this.label37.Name = "label37";
			this.label37.Size = new System.Drawing.Size(24, 23);
			this.label37.TabIndex = 57;
			this.label37.Text = "0";
			// 
			// label38
			// 
			this.label38.Location = new System.Drawing.Point(184, 144);
			this.label38.Name = "label38";
			this.label38.Size = new System.Drawing.Size(24, 23);
			this.label38.TabIndex = 58;
			this.label38.Text = "0";
			// 
			// label39
			// 
			this.label39.Location = new System.Drawing.Point(184, 120);
			this.label39.Name = "label39";
			this.label39.Size = new System.Drawing.Size(24, 23);
			this.label39.TabIndex = 59;
			this.label39.Text = "0";
			// 
			// label40
			// 
			this.label40.Location = new System.Drawing.Point(184, 96);
			this.label40.Name = "label40";
			this.label40.Size = new System.Drawing.Size(24, 23);
			this.label40.TabIndex = 60;
			this.label40.Text = "0";
			// 
			// label41
			// 
			this.label41.Location = new System.Drawing.Point(384, 72);
			this.label41.Name = "label41";
			this.label41.Size = new System.Drawing.Size(24, 23);
			this.label41.TabIndex = 61;
			this.label41.Text = "0";
			// 
			// label42
			// 
			this.label42.Location = new System.Drawing.Point(384, 96);
			this.label42.Name = "label42";
			this.label42.Size = new System.Drawing.Size(24, 23);
			this.label42.TabIndex = 62;
			this.label42.Text = "0";
			// 
			// label43
			// 
			this.label43.Location = new System.Drawing.Point(384, 120);
			this.label43.Name = "label43";
			this.label43.Size = new System.Drawing.Size(24, 23);
			this.label43.TabIndex = 63;
			this.label43.Text = "0";
			// 
			// label44
			// 
			this.label44.Location = new System.Drawing.Point(384, 144);
			this.label44.Name = "label44";
			this.label44.Size = new System.Drawing.Size(24, 23);
			this.label44.TabIndex = 64;
			this.label44.Text = "0";
			// 
			// label45
			// 
			this.label45.Location = new System.Drawing.Point(384, 168);
			this.label45.Name = "label45";
			this.label45.Size = new System.Drawing.Size(24, 23);
			this.label45.TabIndex = 65;
			this.label45.Text = "0";
			// 
			// label46
			// 
			this.label46.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label46.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label46.Location = new System.Drawing.Point(264, 168);
			this.label46.Name = "label46";
			this.label46.Size = new System.Drawing.Size(56, 23);
			this.label46.TabIndex = 66;
			// 
			// label47
			// 
			this.label47.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label47.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label47.Location = new System.Drawing.Point(264, 144);
			this.label47.Name = "label47";
			this.label47.Size = new System.Drawing.Size(56, 23);
			this.label47.TabIndex = 67;
			// 
			// label48
			// 
			this.label48.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label48.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label48.Location = new System.Drawing.Point(264, 120);
			this.label48.Name = "label48";
			this.label48.Size = new System.Drawing.Size(56, 23);
			this.label48.TabIndex = 68;
			// 
			// label49
			// 
			this.label49.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label49.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label49.Location = new System.Drawing.Point(264, 96);
			this.label49.Name = "label49";
			this.label49.Size = new System.Drawing.Size(56, 23);
			this.label49.TabIndex = 69;
			// 
			// label50
			// 
			this.label50.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label50.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label50.Location = new System.Drawing.Point(264, 72);
			this.label50.Name = "label50";
			this.label50.Size = new System.Drawing.Size(56, 23);
			this.label50.TabIndex = 70;
			// 
			// label51
			// 
			this.label51.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(128)));
			this.label51.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label51.Location = new System.Drawing.Point(336, 48);
			this.label51.Name = "label51";
			this.label51.Size = new System.Drawing.Size(48, 23);
			this.label51.TabIndex = 71;
			this.label51.Text = "Busena";
			// 
			// label52
			// 
			this.label52.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label52.Location = new System.Drawing.Point(304, 264);
			this.label52.Name = "label52";
			this.label52.TabIndex = 72;
			// 
			// label53
			// 
			this.label53.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label53.Location = new System.Drawing.Point(304, 240);
			this.label53.Name = "label53";
			this.label53.TabIndex = 73;
			// 
			// label54
			// 
			this.label54.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label54.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label54.Location = new System.Drawing.Point(24, 272);
			this.label54.Name = "label54";
			this.label54.Size = new System.Drawing.Size(40, 16);
			this.label54.TabIndex = 74;
			this.label54.Text = "2 - 0";
			// 
			// label55
			// 
			this.label55.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label55.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label55.Location = new System.Drawing.Point(24, 288);
			this.label55.Name = "label55";
			this.label55.Size = new System.Drawing.Size(40, 16);
			this.label55.TabIndex = 75;
			this.label55.Text = "3 - 0";
			// 
			// label56
			// 
			this.label56.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label56.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label56.Location = new System.Drawing.Point(24, 304);
			this.label56.Name = "label56";
			this.label56.Size = new System.Drawing.Size(40, 16);
			this.label56.TabIndex = 76;
			this.label56.Text = "4 - 0";
			// 
			// label57
			// 
			this.label57.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(192)));
			this.label57.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label57.Location = new System.Drawing.Point(24, 320);
			this.label57.Name = "label57";
			this.label57.Size = new System.Drawing.Size(40, 16);
			this.label57.TabIndex = 77;
			this.label57.Text = "5 - 0";
			// 
			// Form2
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.ClientSize = new System.Drawing.Size(424, 342);
			this.Controls.Add(this.label57);
			this.Controls.Add(this.label56);
			this.Controls.Add(this.label55);
			this.Controls.Add(this.label54);
			this.Controls.Add(this.label53);
			this.Controls.Add(this.label52);
			this.Controls.Add(this.label51);
			this.Controls.Add(this.label50);
			this.Controls.Add(this.label49);
			this.Controls.Add(this.label48);
			this.Controls.Add(this.label47);
			this.Controls.Add(this.label46);
			this.Controls.Add(this.label45);
			this.Controls.Add(this.label44);
			this.Controls.Add(this.label43);
			this.Controls.Add(this.label42);
			this.Controls.Add(this.label41);
			this.Controls.Add(this.label40);
			this.Controls.Add(this.label39);
			this.Controls.Add(this.label38);
			this.Controls.Add(this.label37);
			this.Controls.Add(this.label36);
			this.Controls.Add(this.label35);
			this.Controls.Add(this.label10);
			this.Controls.Add(this.label9);
			this.Controls.Add(this.label8);
			this.Controls.Add(this.label7);
			this.Controls.Add(this.label34);
			this.Controls.Add(this.label33);
			this.Controls.Add(this.label32);
			this.Controls.Add(this.label31);
			this.Controls.Add(this.label30);
			this.Controls.Add(this.label29);
			this.Controls.Add(this.label28);
			this.Controls.Add(this.label27);
			this.Controls.Add(this.label26);
			this.Controls.Add(this.label25);
			this.Controls.Add(this.label24);
			this.Controls.Add(this.label23);
			this.Controls.Add(this.label22);
			this.Controls.Add(this.label21);
			this.Controls.Add(this.label20);
			this.Controls.Add(this.label19);
			this.Controls.Add(this.label18);
			this.Controls.Add(this.label17);
			this.Controls.Add(this.label16);
			this.Controls.Add(this.label15);
			this.Controls.Add(this.label14);
			this.Controls.Add(this.label13);
			this.Controls.Add(this.label12);
			this.Controls.Add(this.label11);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button5);
			this.Name = "Form2";
			this.Text = "Sudoku";
			this.Load += new System.EventHandler(this.Form2_Load);
			this.ResumeLayout(false);

		}
		#endregion

		private void Form2_Load(object sender, System.EventArgs e)
		{
		
		}


		//klientu apdorojimas

		//1

		public void kurtiPortaK1()
		{
			try
			{
				//kliento portas 1
				//create the listening socket...
				socListenerK1 = new Socket(AddressFamily.InterNetwork,SocketType.Stream,ProtocolType.Tcp);		
				IPEndPoint ipLocal = new IPEndPoint ( /*127.0.0.1 */IPAddress.Any ,2001);
				//bind to local IP Address...
				socListenerK1.Bind( ipLocal );
				//start listening...
				socListenerK1.Listen (4);
				// create the call back for any client connections...
				socListenerK1.BeginAccept(new AsyncCallback ( OnClientConnectK1 ),null);

			}
			catch(Exception ee)
			{
				MessageBox.Show ( ee.Message );
			}
		}

		public void OnClientConnectK1(IAsyncResult asyn)
		{
			try
			{
				if (yraServeriu != 0)
				{
					socWorkerK1 = socListenerK1.EndAccept (asyn); 
					label18.Text = "Uzimta";
					WaitForDataK1(socWorkerK1);
				} 
				else 
				{
					MessageBox.Show("Nera serveriu, galiciu aptarnauti.");
				}
			}
			catch(Exception se)
			{
				MessageBox.Show ( se.Message );
			}
			
		}

		public void WaitForDataK1(System.Net.Sockets.Socket soc)
		{
			try
			{
				if  ( pfnWorkerCallBackK1 == null ) 
				{
					pfnWorkerCallBackK1 = new AsyncCallback (OnDataReceivedK1);
				}
				CSocketPacket theSocPkt = new CSocketPacket ();
				theSocPkt.thisSocket = soc;
				// now start to listen for any data...
				soc.BeginReceive (theSocPkt.dataBuffer ,0,theSocPkt.dataBuffer.Length ,SocketFlags.None,pfnWorkerCallBackK1,theSocPkt);
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message );
			}

		}

		public  void OnDataReceivedK1(IAsyncResult asyn)
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
				label53.Text = szData;

				//duodamas kliento id
				if (label53.Text.StartsWith("u") == true)
				{
					label7.Text = label53.Text.Substring(1,label53.Text.Length-1);
				}

				//atsijungiama
				if (label53.Text == "a1")
				{
					socListenerK1.Close(); 
					socWorkerK1.Close();
					label18.Text = "Laisva";
					label7.Text = "";
					label34.Text = "0";
					kurtiPortaK1();
				}

				//duomenys is kliento
				if (label53.Text == "0")
				{
					label18.Text = "Gaunama";
					label34.Text = "1";
					AcknoweldgeK1();
				}
				if (label53.Text != "0" && label34.Text == "1")
				{
					label18.Text = "Gaunama";
					label53.Text = szData;
					//nauja sesija
					string temp = label53.Text;
					newSession1(temp);

					
					label34.Text = "2";
					AcknoweldgeK1();
					label34.Text = "3";
					label18.Text = "Laukia";
					initSend1();
				}
				if (label53.Text == "3")
				{
					//update fields
					label18.Text = "Siunciama";
					label34.Text = "4";
					//send info
					byte[] byData = System.Text.Encoding.ASCII.GetBytes(sesija1.duomenys);
					socWorkerK1.Send(byData);
				}
				if (label53.Text == "a" && label34.Text == "4" && label18.Text == "Siunciama")
				{
					//refreshinama
					label18.Text = "Uzimta";
					label34.Text = "0";
					//manage sessions
					sesija1.serverPortoID = 0;
					sesija1.duomenys = "";
					label2.Text = "1 - 0";
				}	
				
				//

				if (label53.Text != "a1")
				{
					WaitForDataK1(socWorkerK1);
				}
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message);
			}
		}

		public void newSession1(string data)
		{
			if (label28.Text == "Uzimta" && label50.Text != "")
			{
				sesija1.clientPortoID = 1;
				sesija1.serverPortoID = 1;
				sesija1.duomenys = data;
				label2.Text = "1 - 1";
			} 
			else if (label29.Text == "Uzimta" && label49.Text != "")
			{
				sesija1.clientPortoID = 1;
				sesija1.serverPortoID = 2;
				sesija1.duomenys = data;
				label2.Text = "1 - 2";
			} 
			else if (label30.Text == "Uzimta" && label48.Text != "")
			{
				sesija1.clientPortoID = 1;
				sesija1.serverPortoID = 3;
				sesija1.duomenys = data;
				label2.Text = "1 - 3";
			} 
			else if (label31.Text == "Uzimta" && label47.Text != "")
			{
				sesija1.clientPortoID = 1;
				sesija1.serverPortoID = 4;
				sesija1.duomenys = data;
				label2.Text = "1 - 4";
			} 
			else if (label32.Text == "Uzimta" && label46.Text != "")
			{
				sesija1.clientPortoID = 1;
				sesija1.serverPortoID = 5;
				sesija1.duomenys = data;
				label2.Text = "1 - 5";
			} 
			else 
			{
				MessageBox.Show("Pirma sesija laukia serverio.");
			}
		}

		public  void AcknoweldgeK1()
		{
			try
			{				
				if ((label34.Text == "1" || label34.Text == "2") && label18.Text == "Gaunama")
				{
					byte[] byData = System.Text.Encoding.ASCII.GetBytes(label34.Text.ToString());
					socWorkerK1.Send(byData);
					label18.Text = "Siunciama";
				}
				if (label18.Text == "Laukia" && label34.Text == "3")
				{
					byte[] byData = System.Text.Encoding.ASCII.GetBytes(label34.Text.ToString());
					socWorkerK1.Send(byData);
					label18.Text = "Patvirtinama";
				}
				
				}
		catch(Exception se)
			{
				MessageBox.Show (se.Message);
			}
		}

		//pagalbinis dalykas

		public class CSocketPacket
		{
			public System.Net.Sockets.Socket thisSocket;
			public byte[] dataBuffer = new byte[82];
		}

		//sesijos

		public void initSend1()
		{
			if (sesija1.serverPortoID == 1)
			{
				byte[] byData = System.Text.Encoding.ASCII.GetBytes(label53.Text.ToString());
				socWorkerS1.Send(byData);
				label28.Text = "Siunciama";
			}
			if (sesija1.serverPortoID == 2)
			{
			}
			if (sesija1.serverPortoID == 3)
			{
			}
			if (sesija1.serverPortoID == 4)
			{
			}
			if (sesija1.serverPortoID == 5)
			{
			}
		}

		public void persiustiK1()
		{
			//sesija pirma siunciama klientui
			AcknoweldgeK1();
		}

		//serveriu apdorojimas

		//1

		public void kurtiPortaS1()
		{
			try
			{
				//serverio portas 1
				//create the listening socket...
				socListenerS1 = new Socket(AddressFamily.InterNetwork,SocketType.Stream,ProtocolType.Tcp);		
				IPEndPoint ipLocal = new IPEndPoint (IPAddress.Any ,3001);
				//bind to local IP Address...
				socListenerS1.Bind( ipLocal );
				//start listening...
				socListenerS1.Listen (4);
				// create the call back for any client connections...
				socListenerS1.BeginAccept(new AsyncCallback ( OnServerConnectS1 ),null);

			}
			catch(Exception ee)
			{
				MessageBox.Show ( ee.Message );
			}
		}

		public void OnServerConnectS1(IAsyncResult asyn)
		{
			try
			{
				socWorkerS1 = socListenerS1.EndAccept (asyn); 
				label28.Text = "Uzimta";
				yraServeriu++;
				WaitForDataS1(socWorkerS1);
			}
			catch(Exception se)
			{
				MessageBox.Show ( se.Message );
			}
			
		}

		public void WaitForDataS1(System.Net.Sockets.Socket soc)
		{
			try
			{
				if  ( pfnWorkerCallBackS1 == null ) 
				{
					pfnWorkerCallBackS1 = new AsyncCallback (OnDataReceivedS1);
				}
				CSocketPacket theSocPkt = new CSocketPacket ();
				theSocPkt.thisSocket = soc;
				// now start to listen for any data...
				soc.BeginReceive (theSocPkt.dataBuffer ,0,theSocPkt.dataBuffer.Length ,SocketFlags.None,pfnWorkerCallBackS1,theSocPkt);
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message );
			}

		}

		public  void OnDataReceivedS1(IAsyncResult asyn)
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
				label52.Text = szData;

				//duodamas serverio id
				if (label52.Text.StartsWith("u") == true)
				{
					label50.Text = label52.Text.Substring(1,label52.Text.Length-1);
				}

				//atsijungiama
				if (label52.Text == "a1")
				{
					if (label28.Text == "Uzimta")
					{
						byte[] byData = System.Text.Encoding.ASCII.GetBytes("aa");
						socWorkerS1.Send(byData);
						socListenerS1.Close(); 
						socWorkerS1.Close();
						label28.Text = "Laisva";
						label50.Text = "";
						label41.Text = "0";
						yraServeriu--;
						kurtiPortaS1();
					} 
					else 
					{
						MessageBox.Show("Negalima atsijungti - sesija nebaigta!!");
					}
					
				} 
				

				//duomenys is serverio
				if (label52.Text == "1")
				{
					label28.Text = "Patvirtinta";
					label41.Text = "1";
					AcknoweldgeS1();
				}
				if (szData.Length >10)
				{
					//gauti
					label28.Text = "Gaunama";
					//label52 - rezultatas
					//rasti sesija
					if (sesija1.serverPortoID == 1)
					{
						//duoti sesijai
						sesija1.duomenys = szData;//label52.Text;
						MessageBox.Show(sesija1.duomenys);
						//persiusti
						label28.Text = "Persiunciama";
						if (sesija1.clientPortoID == 1)
						{
							persiustiK1();
						} 
						else if (sesija1.clientPortoID == 2)
						{
						} 
						else if (sesija1.clientPortoID == 3)
						{
						} 
						else if (sesija1.clientPortoID == 4)
						{
						} 
						else if (sesija1.clientPortoID == 5)
						{
						}
						label28.Text = "Uzimta";
						label41.Text = "0";
					} 
					else 
						if (sesija2.serverPortoID == 1)
					{
						//duoti sesijai
						sesija2.duomenys = label52.Text;
						
						//persiusti
						label28.Text = "Persiunciama";
						if (sesija2.clientPortoID == 1)
						{
							persiustiK1();
						} 
						else if (sesija2.clientPortoID == 2)
						{
						} 
						else if (sesija2.clientPortoID == 3)
						{
						} 
						else if (sesija2.clientPortoID == 4)
						{
						} 
						else if (sesija2.clientPortoID == 5)
						{
						}
						label28.Text = "Uzimta";
						label41.Text = "0";
					} 
					else 
						if (sesija3.serverPortoID == 1)
					{
						//duoti sesijai
						sesija3.duomenys = label52.Text;
						
						//persiusti
						label28.Text = "Persiunciama";
						if (sesija3.clientPortoID == 1)
						{
							persiustiK1();
						} 
						else if (sesija3.clientPortoID == 2)
						{
						} 
						else if (sesija3.clientPortoID == 3)
						{
						} 
						else if (sesija3.clientPortoID == 4)
						{
						} 
						else if (sesija3.clientPortoID == 5)
						{
						}
						label28.Text = "Uzimta";
						label41.Text = "0";
					} 
					else
						if (sesija4.serverPortoID == 1)
					{
						//duoti sesijai
						sesija4.duomenys = label52.Text;
						
						//persiusti
						label28.Text = "Persiunciama";
						if (sesija4.clientPortoID == 1)
						{
							persiustiK1();
						} 
						else if (sesija4.clientPortoID == 2)
						{
						} 
						else if (sesija4.clientPortoID == 3)
						{
						} 
						else if (sesija4.clientPortoID == 4)
						{
						} 
						else if (sesija4.clientPortoID == 5)
						{
						}
						label28.Text = "Uzimta";
						label41.Text = "0";
					} 
					else
						if (sesija5.serverPortoID == 1)
					{
						//duoti sesijai
						sesija5.duomenys = label52.Text;
						
						//persiusti
						label28.Text = "Persiunciama";
						if (sesija5.clientPortoID == 1)
						{
							persiustiK1();
						} 
						else if (sesija5.clientPortoID == 2)
						{
						} 
						else if (sesija5.clientPortoID == 3)
						{
						} 
						else if (sesija5.clientPortoID == 4)
						{
						} 
						else if (sesija5.clientPortoID == 5)
						{
						}
						label28.Text = "Uzimta";
						label41.Text = "0";
					}
					
				}
				
				//

				if (label52.Text != "a1")
				{
					WaitForDataS1(socWorkerS1);
				}
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message);
			}
		}

		public  void AcknoweldgeS1()
		{
			try
			{				
				if (label41.Text == "1" && label28.Text == "Patvirtinta")
				{
					
					//kurios sesijos?
					byte[] byData;
					if (sesija1.serverPortoID == 1)
					{
						byData = System.Text.Encoding.ASCII.GetBytes(sesija1.duomenys);
						socWorkerS1.Send(byData);
						label28.Text = "Laukiama";
					} else 
					if (sesija2.serverPortoID == 1)
					{
						byData = System.Text.Encoding.ASCII.GetBytes(sesija2.duomenys);
						socWorkerS1.Send(byData);
						label28.Text = "Laukiama";
					} else 
					if (sesija3.serverPortoID == 1)
					{
						byData = System.Text.Encoding.ASCII.GetBytes(sesija3.duomenys);
						socWorkerS1.Send(byData);
						label28.Text = "Laukiama";
					} else
					if (sesija4.serverPortoID == 1)
					{
						byData = System.Text.Encoding.ASCII.GetBytes(sesija4.duomenys);
						socWorkerS1.Send(byData);
						label28.Text = "Laukiama";
					} else
					if (sesija5.serverPortoID == 1)
					{
						byData = System.Text.Encoding.ASCII.GetBytes(sesija5.duomenys);
						socWorkerS1.Send(byData);
						label28.Text = "Laukiama";
					}
					//siunciam duomenis
					
					//label28.Text = "Siunciama";
				}
				
			}
			catch(Exception se)
			{
				MessageBox.Show (se.Message);
			}
		}

		//mygtukai


		private void button5_Click(object sender, System.EventArgs e)
		{
			if (label18.Text == "Laisva" && label28.Text == "Laisva")
			{
				if (socListenerK1 != null){socListenerK1.Close();}
				if (socWorkerK1 != null){socWorkerK1.Close();}
				if (socListenerS1 != null){socListenerS1.Close();}
				if (socWorkerS1 != null){socWorkerS1.Close();}
				this.Close();
			} 
			else 
			{
				MessageBox.Show("Darbas nebaigtas - negalima atsijungti!!!");
			}
			
		}

	}
}
