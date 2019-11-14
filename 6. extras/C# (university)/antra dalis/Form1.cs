using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Sockets;

namespace Sudoku1
{
	/// <summary>
	/// Summary description for Form1.
	/// </summary>
	public class Form1 : System.Windows.Forms.Form
	{
		
		private Socket client;
		//private Form0 ff;
		private int id = 0;
		private bool open = true;
		private String temp;
		private static Klientui S = new Klientui();
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button button5;
		private System.Windows.Forms.Panel panel2;
		private System.Windows.Forms.Panel panel3;
		private System.Windows.Forms.Panel panel5;
		private System.Windows.Forms.Panel panel4;
		private System.Windows.Forms.Panel panel6;
		private System.Windows.Forms.Panel panel7;
		private System.Windows.Forms.Panel panel8;
		private System.Windows.Forms.Panel panel9;
		private System.Windows.Forms.Panel panel10;
		private System.Windows.Forms.Panel panel11;
		private System.Windows.Forms.Label label11;
		private System.Windows.Forms.Label label12;
		private System.Windows.Forms.Label label21;
		private System.Windows.Forms.Label label13;
		private System.Windows.Forms.Label label22;
		private System.Windows.Forms.Label label32;
		private System.Windows.Forms.Label label23;
		private System.Windows.Forms.Label label31;
		private System.Windows.Forms.Label label33;
		private System.Windows.Forms.Panel panel12;
		private System.Windows.Forms.Panel panel13;
		private System.Windows.Forms.Label label41;
		private System.Windows.Forms.Panel panel14;
		private System.Windows.Forms.Label label42;
		private System.Windows.Forms.Panel panel15;
		private System.Windows.Forms.Label label43;
		private System.Windows.Forms.Panel panel16;
		private System.Windows.Forms.Label label53;
		private System.Windows.Forms.Panel panel17;
		private System.Windows.Forms.Label label52;
		private System.Windows.Forms.Panel panel18;
		private System.Windows.Forms.Label label51;
		private System.Windows.Forms.Panel panel19;
		private System.Windows.Forms.Label label61;
		private System.Windows.Forms.Panel panel20;
		private System.Windows.Forms.Label label62;
		private System.Windows.Forms.Panel panel21;
		private System.Windows.Forms.Label label63;
		private System.Windows.Forms.Panel panel22;
		private System.Windows.Forms.Panel panel23;
		private System.Windows.Forms.Label label71;
		private System.Windows.Forms.Panel panel24;
		private System.Windows.Forms.Label label72;
		private System.Windows.Forms.Panel panel25;
		private System.Windows.Forms.Label label73;
		private System.Windows.Forms.Panel panel26;
		private System.Windows.Forms.Label label83;
		private System.Windows.Forms.Panel panel27;
		private System.Windows.Forms.Label label82;
		private System.Windows.Forms.Panel panel28;
		private System.Windows.Forms.Label label81;
		private System.Windows.Forms.Panel panel29;
		private System.Windows.Forms.Label label91;
		private System.Windows.Forms.Panel panel30;
		private System.Windows.Forms.Label label92;
		private System.Windows.Forms.Panel panel31;
		private System.Windows.Forms.Label label93;
		private System.Windows.Forms.Panel panel32;
		private System.Windows.Forms.Panel panel33;
		private System.Windows.Forms.Label label14;
		private System.Windows.Forms.Panel panel34;
		private System.Windows.Forms.Label label15;
		private System.Windows.Forms.Panel panel35;
		private System.Windows.Forms.Label label16;
		private System.Windows.Forms.Panel panel36;
		private System.Windows.Forms.Label label26;
		private System.Windows.Forms.Panel panel37;
		private System.Windows.Forms.Label label25;
		private System.Windows.Forms.Panel panel38;
		private System.Windows.Forms.Label label24;
		private System.Windows.Forms.Panel panel39;
		private System.Windows.Forms.Label label34;
		private System.Windows.Forms.Panel panel40;
		private System.Windows.Forms.Label label35;
		private System.Windows.Forms.Panel panel41;
		private System.Windows.Forms.Label label36;
		private System.Windows.Forms.Panel panel42;
		private System.Windows.Forms.Panel panel43;
		private System.Windows.Forms.Label label44;
		private System.Windows.Forms.Panel panel44;
		private System.Windows.Forms.Label label45;
		private System.Windows.Forms.Panel panel45;
		private System.Windows.Forms.Label label46;
		private System.Windows.Forms.Panel panel46;
		private System.Windows.Forms.Label label56;
		private System.Windows.Forms.Panel panel47;
		private System.Windows.Forms.Label label55;
		private System.Windows.Forms.Panel panel48;
		private System.Windows.Forms.Label label54;
		private System.Windows.Forms.Panel panel49;
		private System.Windows.Forms.Label label64;
		private System.Windows.Forms.Panel panel50;
		private System.Windows.Forms.Label label65;
		private System.Windows.Forms.Panel panel51;
		private System.Windows.Forms.Label label66;
		private System.Windows.Forms.Panel panel52;
		private System.Windows.Forms.Panel panel53;
		private System.Windows.Forms.Label label74;
		private System.Windows.Forms.Panel panel54;
		private System.Windows.Forms.Label label75;
		private System.Windows.Forms.Panel panel55;
		private System.Windows.Forms.Label label76;
		private System.Windows.Forms.Panel panel56;
		private System.Windows.Forms.Label label86;
		private System.Windows.Forms.Panel panel57;
		private System.Windows.Forms.Label label85;
		private System.Windows.Forms.Panel panel58;
		private System.Windows.Forms.Label label84;
		private System.Windows.Forms.Panel panel59;
		private System.Windows.Forms.Label label94;
		private System.Windows.Forms.Panel panel60;
		private System.Windows.Forms.Label label95;
		private System.Windows.Forms.Panel panel61;
		private System.Windows.Forms.Label label96;
		private System.Windows.Forms.Panel panel62;
		private System.Windows.Forms.Panel panel63;
		private System.Windows.Forms.Panel panel64;
		private System.Windows.Forms.Panel panel65;
		private System.Windows.Forms.Panel panel66;
		private System.Windows.Forms.Panel panel67;
		private System.Windows.Forms.Panel panel68;
		private System.Windows.Forms.Panel panel69;
		private System.Windows.Forms.Panel panel70;
		private System.Windows.Forms.Panel panel71;
		private System.Windows.Forms.Label label17;
		private System.Windows.Forms.Label label18;
		private System.Windows.Forms.Label label19;
		private System.Windows.Forms.Label label29;
		private System.Windows.Forms.Label label28;
		private System.Windows.Forms.Label label27;
		private System.Windows.Forms.Label label37;
		private System.Windows.Forms.Label label38;
		private System.Windows.Forms.Label label39;
		private System.Windows.Forms.Panel panel72;
		private System.Windows.Forms.Panel panel73;
		private System.Windows.Forms.Label label47;
		private System.Windows.Forms.Panel panel74;
		private System.Windows.Forms.Label label48;
		private System.Windows.Forms.Panel panel75;
		private System.Windows.Forms.Label label49;
		private System.Windows.Forms.Panel panel76;
		private System.Windows.Forms.Label label59;
		private System.Windows.Forms.Panel panel77;
		private System.Windows.Forms.Label label58;
		private System.Windows.Forms.Panel panel78;
		private System.Windows.Forms.Label label57;
		private System.Windows.Forms.Panel panel79;
		private System.Windows.Forms.Label label67;
		private System.Windows.Forms.Panel panel80;
		private System.Windows.Forms.Label label68;
		private System.Windows.Forms.Panel panel81;
		private System.Windows.Forms.Label label69;
		private System.Windows.Forms.Panel panel82;
		private System.Windows.Forms.Panel panel83;
		private System.Windows.Forms.Label label77;
		private System.Windows.Forms.Panel panel84;
		private System.Windows.Forms.Label label78;
		private System.Windows.Forms.Panel panel85;
		private System.Windows.Forms.Label label79;
		private System.Windows.Forms.Panel panel86;
		private System.Windows.Forms.Label label89;
		private System.Windows.Forms.Panel panel87;
		private System.Windows.Forms.Label label88;
		private System.Windows.Forms.Panel panel88;
		private System.Windows.Forms.Label label87;
		private System.Windows.Forms.Panel panel89;
		private System.Windows.Forms.Label label97;
		private System.Windows.Forms.Panel panel90;
		private System.Windows.Forms.Label label98;
		private System.Windows.Forms.Panel panel91;
		private System.Windows.Forms.Label label99;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;
		private System.Windows.Forms.TextBox textBox1;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.Button button4;
		private System.Windows.Forms.Button button6;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.TextBox textBox2;
		private System.Windows.Forms.TextBox textBox3;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.Label label9;
		private System.Windows.Forms.Button button7;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.Label label20;
		private System.Windows.Forms.Label label30;
		private System.Windows.Forms.Button button8;
		
		public Form1(Form0 fff, int idd)
		{
			//
			// Required for Windows Form Designer support
			//
			InitializeComponent();
			String s = System.Convert.ToString(idd);
			id = idd;
			label5.Text = s;
			
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
			this.panel1 = new System.Windows.Forms.Panel();
			this.panel82 = new System.Windows.Forms.Panel();
			this.panel83 = new System.Windows.Forms.Panel();
			this.label77 = new System.Windows.Forms.Label();
			this.panel84 = new System.Windows.Forms.Panel();
			this.label78 = new System.Windows.Forms.Label();
			this.panel85 = new System.Windows.Forms.Panel();
			this.label79 = new System.Windows.Forms.Label();
			this.panel86 = new System.Windows.Forms.Panel();
			this.label89 = new System.Windows.Forms.Label();
			this.panel87 = new System.Windows.Forms.Panel();
			this.label88 = new System.Windows.Forms.Label();
			this.panel88 = new System.Windows.Forms.Panel();
			this.label87 = new System.Windows.Forms.Label();
			this.panel89 = new System.Windows.Forms.Panel();
			this.label97 = new System.Windows.Forms.Label();
			this.panel90 = new System.Windows.Forms.Panel();
			this.label98 = new System.Windows.Forms.Label();
			this.panel91 = new System.Windows.Forms.Panel();
			this.label99 = new System.Windows.Forms.Label();
			this.panel72 = new System.Windows.Forms.Panel();
			this.panel73 = new System.Windows.Forms.Panel();
			this.label47 = new System.Windows.Forms.Label();
			this.panel74 = new System.Windows.Forms.Panel();
			this.label48 = new System.Windows.Forms.Label();
			this.panel75 = new System.Windows.Forms.Panel();
			this.label49 = new System.Windows.Forms.Label();
			this.panel76 = new System.Windows.Forms.Panel();
			this.label59 = new System.Windows.Forms.Label();
			this.panel77 = new System.Windows.Forms.Panel();
			this.label58 = new System.Windows.Forms.Label();
			this.panel78 = new System.Windows.Forms.Panel();
			this.label57 = new System.Windows.Forms.Label();
			this.panel79 = new System.Windows.Forms.Panel();
			this.label67 = new System.Windows.Forms.Label();
			this.panel80 = new System.Windows.Forms.Panel();
			this.label68 = new System.Windows.Forms.Label();
			this.panel81 = new System.Windows.Forms.Panel();
			this.label69 = new System.Windows.Forms.Label();
			this.panel62 = new System.Windows.Forms.Panel();
			this.panel63 = new System.Windows.Forms.Panel();
			this.label17 = new System.Windows.Forms.Label();
			this.panel64 = new System.Windows.Forms.Panel();
			this.label18 = new System.Windows.Forms.Label();
			this.panel65 = new System.Windows.Forms.Panel();
			this.label19 = new System.Windows.Forms.Label();
			this.panel66 = new System.Windows.Forms.Panel();
			this.label29 = new System.Windows.Forms.Label();
			this.panel67 = new System.Windows.Forms.Panel();
			this.label28 = new System.Windows.Forms.Label();
			this.panel68 = new System.Windows.Forms.Panel();
			this.label27 = new System.Windows.Forms.Label();
			this.panel69 = new System.Windows.Forms.Panel();
			this.label37 = new System.Windows.Forms.Label();
			this.panel70 = new System.Windows.Forms.Panel();
			this.label38 = new System.Windows.Forms.Label();
			this.panel71 = new System.Windows.Forms.Panel();
			this.label39 = new System.Windows.Forms.Label();
			this.panel52 = new System.Windows.Forms.Panel();
			this.panel53 = new System.Windows.Forms.Panel();
			this.label74 = new System.Windows.Forms.Label();
			this.panel54 = new System.Windows.Forms.Panel();
			this.label75 = new System.Windows.Forms.Label();
			this.panel55 = new System.Windows.Forms.Panel();
			this.label76 = new System.Windows.Forms.Label();
			this.panel56 = new System.Windows.Forms.Panel();
			this.label86 = new System.Windows.Forms.Label();
			this.panel57 = new System.Windows.Forms.Panel();
			this.label85 = new System.Windows.Forms.Label();
			this.panel58 = new System.Windows.Forms.Panel();
			this.label84 = new System.Windows.Forms.Label();
			this.panel59 = new System.Windows.Forms.Panel();
			this.label94 = new System.Windows.Forms.Label();
			this.panel60 = new System.Windows.Forms.Panel();
			this.label95 = new System.Windows.Forms.Label();
			this.panel61 = new System.Windows.Forms.Panel();
			this.label96 = new System.Windows.Forms.Label();
			this.panel42 = new System.Windows.Forms.Panel();
			this.panel43 = new System.Windows.Forms.Panel();
			this.label44 = new System.Windows.Forms.Label();
			this.panel44 = new System.Windows.Forms.Panel();
			this.label45 = new System.Windows.Forms.Label();
			this.panel45 = new System.Windows.Forms.Panel();
			this.label46 = new System.Windows.Forms.Label();
			this.panel46 = new System.Windows.Forms.Panel();
			this.label56 = new System.Windows.Forms.Label();
			this.panel47 = new System.Windows.Forms.Panel();
			this.label55 = new System.Windows.Forms.Label();
			this.panel48 = new System.Windows.Forms.Panel();
			this.label54 = new System.Windows.Forms.Label();
			this.panel49 = new System.Windows.Forms.Panel();
			this.label64 = new System.Windows.Forms.Label();
			this.panel50 = new System.Windows.Forms.Panel();
			this.label65 = new System.Windows.Forms.Label();
			this.panel51 = new System.Windows.Forms.Panel();
			this.label66 = new System.Windows.Forms.Label();
			this.panel32 = new System.Windows.Forms.Panel();
			this.panel33 = new System.Windows.Forms.Panel();
			this.label14 = new System.Windows.Forms.Label();
			this.panel34 = new System.Windows.Forms.Panel();
			this.label15 = new System.Windows.Forms.Label();
			this.panel35 = new System.Windows.Forms.Panel();
			this.label16 = new System.Windows.Forms.Label();
			this.panel36 = new System.Windows.Forms.Panel();
			this.label26 = new System.Windows.Forms.Label();
			this.panel37 = new System.Windows.Forms.Panel();
			this.label25 = new System.Windows.Forms.Label();
			this.panel38 = new System.Windows.Forms.Panel();
			this.label24 = new System.Windows.Forms.Label();
			this.panel39 = new System.Windows.Forms.Panel();
			this.label34 = new System.Windows.Forms.Label();
			this.panel40 = new System.Windows.Forms.Panel();
			this.label35 = new System.Windows.Forms.Label();
			this.panel41 = new System.Windows.Forms.Panel();
			this.label36 = new System.Windows.Forms.Label();
			this.panel22 = new System.Windows.Forms.Panel();
			this.panel23 = new System.Windows.Forms.Panel();
			this.label71 = new System.Windows.Forms.Label();
			this.panel24 = new System.Windows.Forms.Panel();
			this.label72 = new System.Windows.Forms.Label();
			this.panel25 = new System.Windows.Forms.Panel();
			this.label73 = new System.Windows.Forms.Label();
			this.panel26 = new System.Windows.Forms.Panel();
			this.label83 = new System.Windows.Forms.Label();
			this.panel27 = new System.Windows.Forms.Panel();
			this.label82 = new System.Windows.Forms.Label();
			this.panel28 = new System.Windows.Forms.Panel();
			this.label81 = new System.Windows.Forms.Label();
			this.panel29 = new System.Windows.Forms.Panel();
			this.label91 = new System.Windows.Forms.Label();
			this.panel30 = new System.Windows.Forms.Panel();
			this.label92 = new System.Windows.Forms.Label();
			this.panel31 = new System.Windows.Forms.Panel();
			this.label93 = new System.Windows.Forms.Label();
			this.panel12 = new System.Windows.Forms.Panel();
			this.panel13 = new System.Windows.Forms.Panel();
			this.label41 = new System.Windows.Forms.Label();
			this.panel14 = new System.Windows.Forms.Panel();
			this.label42 = new System.Windows.Forms.Label();
			this.panel15 = new System.Windows.Forms.Panel();
			this.label43 = new System.Windows.Forms.Label();
			this.panel16 = new System.Windows.Forms.Panel();
			this.label53 = new System.Windows.Forms.Label();
			this.panel17 = new System.Windows.Forms.Panel();
			this.label52 = new System.Windows.Forms.Label();
			this.panel18 = new System.Windows.Forms.Panel();
			this.label51 = new System.Windows.Forms.Label();
			this.panel19 = new System.Windows.Forms.Panel();
			this.label61 = new System.Windows.Forms.Label();
			this.panel20 = new System.Windows.Forms.Panel();
			this.label62 = new System.Windows.Forms.Label();
			this.panel21 = new System.Windows.Forms.Panel();
			this.label63 = new System.Windows.Forms.Label();
			this.panel2 = new System.Windows.Forms.Panel();
			this.panel3 = new System.Windows.Forms.Panel();
			this.label11 = new System.Windows.Forms.Label();
			this.panel5 = new System.Windows.Forms.Panel();
			this.label12 = new System.Windows.Forms.Label();
			this.panel4 = new System.Windows.Forms.Panel();
			this.label13 = new System.Windows.Forms.Label();
			this.panel6 = new System.Windows.Forms.Panel();
			this.label23 = new System.Windows.Forms.Label();
			this.panel7 = new System.Windows.Forms.Panel();
			this.label22 = new System.Windows.Forms.Label();
			this.panel8 = new System.Windows.Forms.Panel();
			this.label21 = new System.Windows.Forms.Label();
			this.panel9 = new System.Windows.Forms.Panel();
			this.label31 = new System.Windows.Forms.Label();
			this.panel10 = new System.Windows.Forms.Panel();
			this.label32 = new System.Windows.Forms.Label();
			this.panel11 = new System.Windows.Forms.Panel();
			this.label33 = new System.Windows.Forms.Label();
			this.button1 = new System.Windows.Forms.Button();
			this.label1 = new System.Windows.Forms.Label();
			this.button5 = new System.Windows.Forms.Button();
			this.textBox1 = new System.Windows.Forms.TextBox();
			this.label3 = new System.Windows.Forms.Label();
			this.button3 = new System.Windows.Forms.Button();
			this.button4 = new System.Windows.Forms.Button();
			this.button6 = new System.Windows.Forms.Button();
			this.label4 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.label7 = new System.Windows.Forms.Label();
			this.textBox2 = new System.Windows.Forms.TextBox();
			this.textBox3 = new System.Windows.Forms.TextBox();
			this.label8 = new System.Windows.Forms.Label();
			this.label9 = new System.Windows.Forms.Label();
			this.button7 = new System.Windows.Forms.Button();
			this.label10 = new System.Windows.Forms.Label();
			this.label20 = new System.Windows.Forms.Label();
			this.label30 = new System.Windows.Forms.Label();
			this.button8 = new System.Windows.Forms.Button();
			this.panel1.SuspendLayout();
			this.panel82.SuspendLayout();
			this.panel83.SuspendLayout();
			this.panel84.SuspendLayout();
			this.panel85.SuspendLayout();
			this.panel86.SuspendLayout();
			this.panel87.SuspendLayout();
			this.panel88.SuspendLayout();
			this.panel89.SuspendLayout();
			this.panel90.SuspendLayout();
			this.panel91.SuspendLayout();
			this.panel72.SuspendLayout();
			this.panel73.SuspendLayout();
			this.panel74.SuspendLayout();
			this.panel75.SuspendLayout();
			this.panel76.SuspendLayout();
			this.panel77.SuspendLayout();
			this.panel78.SuspendLayout();
			this.panel79.SuspendLayout();
			this.panel80.SuspendLayout();
			this.panel81.SuspendLayout();
			this.panel62.SuspendLayout();
			this.panel63.SuspendLayout();
			this.panel64.SuspendLayout();
			this.panel65.SuspendLayout();
			this.panel66.SuspendLayout();
			this.panel67.SuspendLayout();
			this.panel68.SuspendLayout();
			this.panel69.SuspendLayout();
			this.panel70.SuspendLayout();
			this.panel71.SuspendLayout();
			this.panel52.SuspendLayout();
			this.panel53.SuspendLayout();
			this.panel54.SuspendLayout();
			this.panel55.SuspendLayout();
			this.panel56.SuspendLayout();
			this.panel57.SuspendLayout();
			this.panel58.SuspendLayout();
			this.panel59.SuspendLayout();
			this.panel60.SuspendLayout();
			this.panel61.SuspendLayout();
			this.panel42.SuspendLayout();
			this.panel43.SuspendLayout();
			this.panel44.SuspendLayout();
			this.panel45.SuspendLayout();
			this.panel46.SuspendLayout();
			this.panel47.SuspendLayout();
			this.panel48.SuspendLayout();
			this.panel49.SuspendLayout();
			this.panel50.SuspendLayout();
			this.panel51.SuspendLayout();
			this.panel32.SuspendLayout();
			this.panel33.SuspendLayout();
			this.panel34.SuspendLayout();
			this.panel35.SuspendLayout();
			this.panel36.SuspendLayout();
			this.panel37.SuspendLayout();
			this.panel38.SuspendLayout();
			this.panel39.SuspendLayout();
			this.panel40.SuspendLayout();
			this.panel41.SuspendLayout();
			this.panel22.SuspendLayout();
			this.panel23.SuspendLayout();
			this.panel24.SuspendLayout();
			this.panel25.SuspendLayout();
			this.panel26.SuspendLayout();
			this.panel27.SuspendLayout();
			this.panel28.SuspendLayout();
			this.panel29.SuspendLayout();
			this.panel30.SuspendLayout();
			this.panel31.SuspendLayout();
			this.panel12.SuspendLayout();
			this.panel13.SuspendLayout();
			this.panel14.SuspendLayout();
			this.panel15.SuspendLayout();
			this.panel16.SuspendLayout();
			this.panel17.SuspendLayout();
			this.panel18.SuspendLayout();
			this.panel19.SuspendLayout();
			this.panel20.SuspendLayout();
			this.panel21.SuspendLayout();
			this.panel2.SuspendLayout();
			this.panel3.SuspendLayout();
			this.panel5.SuspendLayout();
			this.panel4.SuspendLayout();
			this.panel6.SuspendLayout();
			this.panel7.SuspendLayout();
			this.panel8.SuspendLayout();
			this.panel9.SuspendLayout();
			this.panel10.SuspendLayout();
			this.panel11.SuspendLayout();
			this.SuspendLayout();
			// 
			// panel1
			// 
			this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
				| System.Windows.Forms.AnchorStyles.Left) 
				| System.Windows.Forms.AnchorStyles.Right)));
			this.panel1.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(128)), ((System.Byte)(255)), ((System.Byte)(255)));
			this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel1.Controls.Add(this.panel82);
			this.panel1.Controls.Add(this.panel72);
			this.panel1.Controls.Add(this.panel62);
			this.panel1.Controls.Add(this.panel52);
			this.panel1.Controls.Add(this.panel42);
			this.panel1.Controls.Add(this.panel32);
			this.panel1.Controls.Add(this.panel22);
			this.panel1.Controls.Add(this.panel12);
			this.panel1.Controls.Add(this.panel2);
			this.panel1.Location = new System.Drawing.Point(144, 32);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(296, 296);
			this.panel1.TabIndex = 0;
			// 
			// panel82
			// 
			this.panel82.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel82.Controls.Add(this.panel83);
			this.panel82.Controls.Add(this.panel84);
			this.panel82.Controls.Add(this.panel85);
			this.panel82.Controls.Add(this.panel86);
			this.panel82.Controls.Add(this.panel87);
			this.panel82.Controls.Add(this.panel88);
			this.panel82.Controls.Add(this.panel89);
			this.panel82.Controls.Add(this.panel90);
			this.panel82.Controls.Add(this.panel91);
			this.panel82.Location = new System.Drawing.Point(200, 200);
			this.panel82.Name = "panel82";
			this.panel82.Size = new System.Drawing.Size(88, 88);
			this.panel82.TabIndex = 8;
			// 
			// panel83
			// 
			this.panel83.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel83.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel83.Controls.Add(this.label77);
			this.panel83.Location = new System.Drawing.Point(0, 0);
			this.panel83.Name = "panel83";
			this.panel83.Size = new System.Drawing.Size(24, 24);
			this.panel83.TabIndex = 1;
			// 
			// label77
			// 
			this.label77.Location = new System.Drawing.Point(0, 0);
			this.label77.Name = "label77";
			this.label77.Size = new System.Drawing.Size(16, 16);
			this.label77.TabIndex = 1;
			this.label77.Text = "0";
			// 
			// panel84
			// 
			this.panel84.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel84.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel84.Controls.Add(this.label78);
			this.panel84.Location = new System.Drawing.Point(32, 0);
			this.panel84.Name = "panel84";
			this.panel84.Size = new System.Drawing.Size(24, 24);
			this.panel84.TabIndex = 3;
			// 
			// label78
			// 
			this.label78.Location = new System.Drawing.Point(0, 0);
			this.label78.Name = "label78";
			this.label78.Size = new System.Drawing.Size(16, 16);
			this.label78.TabIndex = 2;
			this.label78.Text = "0";
			// 
			// panel85
			// 
			this.panel85.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel85.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel85.Controls.Add(this.label79);
			this.panel85.Location = new System.Drawing.Point(64, 0);
			this.panel85.Name = "panel85";
			this.panel85.Size = new System.Drawing.Size(24, 24);
			this.panel85.TabIndex = 4;
			// 
			// label79
			// 
			this.label79.Location = new System.Drawing.Point(0, 0);
			this.label79.Name = "label79";
			this.label79.Size = new System.Drawing.Size(16, 16);
			this.label79.TabIndex = 4;
			this.label79.Text = "0";
			// 
			// panel86
			// 
			this.panel86.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel86.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel86.Controls.Add(this.label89);
			this.panel86.Location = new System.Drawing.Point(64, 32);
			this.panel86.Name = "panel86";
			this.panel86.Size = new System.Drawing.Size(24, 24);
			this.panel86.TabIndex = 4;
			// 
			// label89
			// 
			this.label89.Location = new System.Drawing.Point(0, 0);
			this.label89.Name = "label89";
			this.label89.Size = new System.Drawing.Size(16, 16);
			this.label89.TabIndex = 7;
			this.label89.Text = "0";
			// 
			// panel87
			// 
			this.panel87.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel87.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel87.Controls.Add(this.label88);
			this.panel87.Location = new System.Drawing.Point(32, 32);
			this.panel87.Name = "panel87";
			this.panel87.Size = new System.Drawing.Size(24, 24);
			this.panel87.TabIndex = 4;
			// 
			// label88
			// 
			this.label88.Location = new System.Drawing.Point(0, 0);
			this.label88.Name = "label88";
			this.label88.Size = new System.Drawing.Size(16, 16);
			this.label88.TabIndex = 5;
			this.label88.Text = "0";
			// 
			// panel88
			// 
			this.panel88.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel88.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel88.Controls.Add(this.label87);
			this.panel88.Location = new System.Drawing.Point(0, 32);
			this.panel88.Name = "panel88";
			this.panel88.Size = new System.Drawing.Size(24, 24);
			this.panel88.TabIndex = 4;
			// 
			// label87
			// 
			this.label87.Location = new System.Drawing.Point(0, 0);
			this.label87.Name = "label87";
			this.label87.Size = new System.Drawing.Size(16, 16);
			this.label87.TabIndex = 3;
			this.label87.Text = "0";
			// 
			// panel89
			// 
			this.panel89.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel89.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel89.Controls.Add(this.label97);
			this.panel89.Location = new System.Drawing.Point(0, 64);
			this.panel89.Name = "panel89";
			this.panel89.Size = new System.Drawing.Size(24, 24);
			this.panel89.TabIndex = 4;
			// 
			// label97
			// 
			this.label97.Location = new System.Drawing.Point(0, 0);
			this.label97.Name = "label97";
			this.label97.Size = new System.Drawing.Size(16, 16);
			this.label97.TabIndex = 8;
			this.label97.Text = "0";
			// 
			// panel90
			// 
			this.panel90.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel90.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel90.Controls.Add(this.label98);
			this.panel90.Location = new System.Drawing.Point(32, 64);
			this.panel90.Name = "panel90";
			this.panel90.Size = new System.Drawing.Size(24, 24);
			this.panel90.TabIndex = 4;
			// 
			// label98
			// 
			this.label98.Location = new System.Drawing.Point(0, 0);
			this.label98.Name = "label98";
			this.label98.Size = new System.Drawing.Size(16, 16);
			this.label98.TabIndex = 6;
			this.label98.Text = "0";
			// 
			// panel91
			// 
			this.panel91.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel91.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel91.Controls.Add(this.label99);
			this.panel91.Location = new System.Drawing.Point(64, 64);
			this.panel91.Name = "panel91";
			this.panel91.Size = new System.Drawing.Size(24, 24);
			this.panel91.TabIndex = 4;
			// 
			// label99
			// 
			this.label99.Location = new System.Drawing.Point(0, 0);
			this.label99.Name = "label99";
			this.label99.Size = new System.Drawing.Size(16, 16);
			this.label99.TabIndex = 9;
			this.label99.Text = "0";
			// 
			// panel72
			// 
			this.panel72.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel72.Controls.Add(this.panel73);
			this.panel72.Controls.Add(this.panel74);
			this.panel72.Controls.Add(this.panel75);
			this.panel72.Controls.Add(this.panel76);
			this.panel72.Controls.Add(this.panel77);
			this.panel72.Controls.Add(this.panel78);
			this.panel72.Controls.Add(this.panel79);
			this.panel72.Controls.Add(this.panel80);
			this.panel72.Controls.Add(this.panel81);
			this.panel72.Location = new System.Drawing.Point(200, 104);
			this.panel72.Name = "panel72";
			this.panel72.Size = new System.Drawing.Size(88, 88);
			this.panel72.TabIndex = 7;
			// 
			// panel73
			// 
			this.panel73.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel73.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel73.Controls.Add(this.label47);
			this.panel73.Location = new System.Drawing.Point(0, 0);
			this.panel73.Name = "panel73";
			this.panel73.Size = new System.Drawing.Size(24, 24);
			this.panel73.TabIndex = 1;
			// 
			// label47
			// 
			this.label47.Location = new System.Drawing.Point(0, 0);
			this.label47.Name = "label47";
			this.label47.Size = new System.Drawing.Size(16, 16);
			this.label47.TabIndex = 1;
			this.label47.Text = "0";
			// 
			// panel74
			// 
			this.panel74.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel74.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel74.Controls.Add(this.label48);
			this.panel74.Location = new System.Drawing.Point(32, 0);
			this.panel74.Name = "panel74";
			this.panel74.Size = new System.Drawing.Size(24, 24);
			this.panel74.TabIndex = 3;
			// 
			// label48
			// 
			this.label48.Location = new System.Drawing.Point(0, 0);
			this.label48.Name = "label48";
			this.label48.Size = new System.Drawing.Size(16, 16);
			this.label48.TabIndex = 2;
			this.label48.Text = "0";
			// 
			// panel75
			// 
			this.panel75.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel75.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel75.Controls.Add(this.label49);
			this.panel75.Location = new System.Drawing.Point(64, 0);
			this.panel75.Name = "panel75";
			this.panel75.Size = new System.Drawing.Size(24, 24);
			this.panel75.TabIndex = 4;
			// 
			// label49
			// 
			this.label49.Location = new System.Drawing.Point(0, 0);
			this.label49.Name = "label49";
			this.label49.Size = new System.Drawing.Size(16, 16);
			this.label49.TabIndex = 4;
			this.label49.Text = "0";
			// 
			// panel76
			// 
			this.panel76.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel76.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel76.Controls.Add(this.label59);
			this.panel76.Location = new System.Drawing.Point(64, 32);
			this.panel76.Name = "panel76";
			this.panel76.Size = new System.Drawing.Size(24, 24);
			this.panel76.TabIndex = 4;
			// 
			// label59
			// 
			this.label59.Location = new System.Drawing.Point(0, 0);
			this.label59.Name = "label59";
			this.label59.Size = new System.Drawing.Size(16, 16);
			this.label59.TabIndex = 7;
			this.label59.Text = "0";
			// 
			// panel77
			// 
			this.panel77.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel77.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel77.Controls.Add(this.label58);
			this.panel77.Location = new System.Drawing.Point(32, 32);
			this.panel77.Name = "panel77";
			this.panel77.Size = new System.Drawing.Size(24, 24);
			this.panel77.TabIndex = 4;
			// 
			// label58
			// 
			this.label58.Location = new System.Drawing.Point(0, 0);
			this.label58.Name = "label58";
			this.label58.Size = new System.Drawing.Size(16, 16);
			this.label58.TabIndex = 5;
			this.label58.Text = "0";
			// 
			// panel78
			// 
			this.panel78.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel78.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel78.Controls.Add(this.label57);
			this.panel78.Location = new System.Drawing.Point(0, 32);
			this.panel78.Name = "panel78";
			this.panel78.Size = new System.Drawing.Size(24, 24);
			this.panel78.TabIndex = 4;
			// 
			// label57
			// 
			this.label57.Location = new System.Drawing.Point(0, 0);
			this.label57.Name = "label57";
			this.label57.Size = new System.Drawing.Size(16, 16);
			this.label57.TabIndex = 3;
			this.label57.Text = "0";
			// 
			// panel79
			// 
			this.panel79.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel79.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel79.Controls.Add(this.label67);
			this.panel79.Location = new System.Drawing.Point(0, 64);
			this.panel79.Name = "panel79";
			this.panel79.Size = new System.Drawing.Size(24, 24);
			this.panel79.TabIndex = 4;
			// 
			// label67
			// 
			this.label67.Location = new System.Drawing.Point(0, 0);
			this.label67.Name = "label67";
			this.label67.Size = new System.Drawing.Size(16, 16);
			this.label67.TabIndex = 8;
			this.label67.Text = "0";
			// 
			// panel80
			// 
			this.panel80.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel80.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel80.Controls.Add(this.label68);
			this.panel80.Location = new System.Drawing.Point(32, 64);
			this.panel80.Name = "panel80";
			this.panel80.Size = new System.Drawing.Size(24, 24);
			this.panel80.TabIndex = 4;
			// 
			// label68
			// 
			this.label68.Location = new System.Drawing.Point(0, 0);
			this.label68.Name = "label68";
			this.label68.Size = new System.Drawing.Size(16, 16);
			this.label68.TabIndex = 6;
			this.label68.Text = "0";
			// 
			// panel81
			// 
			this.panel81.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel81.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel81.Controls.Add(this.label69);
			this.panel81.Location = new System.Drawing.Point(64, 64);
			this.panel81.Name = "panel81";
			this.panel81.Size = new System.Drawing.Size(24, 24);
			this.panel81.TabIndex = 4;
			// 
			// label69
			// 
			this.label69.Location = new System.Drawing.Point(0, 0);
			this.label69.Name = "label69";
			this.label69.Size = new System.Drawing.Size(16, 16);
			this.label69.TabIndex = 9;
			this.label69.Text = "0";
			// 
			// panel62
			// 
			this.panel62.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel62.Controls.Add(this.panel63);
			this.panel62.Controls.Add(this.panel64);
			this.panel62.Controls.Add(this.panel65);
			this.panel62.Controls.Add(this.panel66);
			this.panel62.Controls.Add(this.panel67);
			this.panel62.Controls.Add(this.panel68);
			this.panel62.Controls.Add(this.panel69);
			this.panel62.Controls.Add(this.panel70);
			this.panel62.Controls.Add(this.panel71);
			this.panel62.Location = new System.Drawing.Point(200, 8);
			this.panel62.Name = "panel62";
			this.panel62.Size = new System.Drawing.Size(88, 88);
			this.panel62.TabIndex = 6;
			// 
			// panel63
			// 
			this.panel63.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel63.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel63.Controls.Add(this.label17);
			this.panel63.Location = new System.Drawing.Point(0, 0);
			this.panel63.Name = "panel63";
			this.panel63.Size = new System.Drawing.Size(24, 24);
			this.panel63.TabIndex = 1;
			// 
			// label17
			// 
			this.label17.Location = new System.Drawing.Point(0, 0);
			this.label17.Name = "label17";
			this.label17.Size = new System.Drawing.Size(16, 16);
			this.label17.TabIndex = 1;
			this.label17.Text = "0";
			// 
			// panel64
			// 
			this.panel64.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel64.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel64.Controls.Add(this.label18);
			this.panel64.Location = new System.Drawing.Point(32, 0);
			this.panel64.Name = "panel64";
			this.panel64.Size = new System.Drawing.Size(24, 24);
			this.panel64.TabIndex = 3;
			// 
			// label18
			// 
			this.label18.Location = new System.Drawing.Point(0, 0);
			this.label18.Name = "label18";
			this.label18.Size = new System.Drawing.Size(16, 16);
			this.label18.TabIndex = 2;
			this.label18.Text = "0";
			// 
			// panel65
			// 
			this.panel65.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel65.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel65.Controls.Add(this.label19);
			this.panel65.Location = new System.Drawing.Point(64, 0);
			this.panel65.Name = "panel65";
			this.panel65.Size = new System.Drawing.Size(24, 24);
			this.panel65.TabIndex = 4;
			// 
			// label19
			// 
			this.label19.Location = new System.Drawing.Point(0, 0);
			this.label19.Name = "label19";
			this.label19.Size = new System.Drawing.Size(16, 16);
			this.label19.TabIndex = 4;
			this.label19.Text = "0";
			// 
			// panel66
			// 
			this.panel66.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel66.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel66.Controls.Add(this.label29);
			this.panel66.Location = new System.Drawing.Point(64, 32);
			this.panel66.Name = "panel66";
			this.panel66.Size = new System.Drawing.Size(24, 24);
			this.panel66.TabIndex = 4;
			// 
			// label29
			// 
			this.label29.Location = new System.Drawing.Point(0, 0);
			this.label29.Name = "label29";
			this.label29.Size = new System.Drawing.Size(16, 16);
			this.label29.TabIndex = 7;
			this.label29.Text = "0";
			// 
			// panel67
			// 
			this.panel67.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel67.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel67.Controls.Add(this.label28);
			this.panel67.Location = new System.Drawing.Point(32, 32);
			this.panel67.Name = "panel67";
			this.panel67.Size = new System.Drawing.Size(24, 24);
			this.panel67.TabIndex = 4;
			// 
			// label28
			// 
			this.label28.Location = new System.Drawing.Point(0, 0);
			this.label28.Name = "label28";
			this.label28.Size = new System.Drawing.Size(16, 16);
			this.label28.TabIndex = 5;
			this.label28.Text = "0";
			// 
			// panel68
			// 
			this.panel68.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel68.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel68.Controls.Add(this.label27);
			this.panel68.Location = new System.Drawing.Point(0, 32);
			this.panel68.Name = "panel68";
			this.panel68.Size = new System.Drawing.Size(24, 24);
			this.panel68.TabIndex = 4;
			// 
			// label27
			// 
			this.label27.Location = new System.Drawing.Point(0, 0);
			this.label27.Name = "label27";
			this.label27.Size = new System.Drawing.Size(16, 16);
			this.label27.TabIndex = 3;
			this.label27.Text = "0";
			// 
			// panel69
			// 
			this.panel69.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel69.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel69.Controls.Add(this.label37);
			this.panel69.Location = new System.Drawing.Point(0, 64);
			this.panel69.Name = "panel69";
			this.panel69.Size = new System.Drawing.Size(24, 24);
			this.panel69.TabIndex = 4;
			// 
			// label37
			// 
			this.label37.Location = new System.Drawing.Point(0, 0);
			this.label37.Name = "label37";
			this.label37.Size = new System.Drawing.Size(16, 16);
			this.label37.TabIndex = 8;
			this.label37.Text = "0";
			// 
			// panel70
			// 
			this.panel70.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel70.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel70.Controls.Add(this.label38);
			this.panel70.Location = new System.Drawing.Point(32, 64);
			this.panel70.Name = "panel70";
			this.panel70.Size = new System.Drawing.Size(24, 24);
			this.panel70.TabIndex = 4;
			// 
			// label38
			// 
			this.label38.Location = new System.Drawing.Point(0, 0);
			this.label38.Name = "label38";
			this.label38.Size = new System.Drawing.Size(16, 16);
			this.label38.TabIndex = 6;
			this.label38.Text = "0";
			// 
			// panel71
			// 
			this.panel71.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel71.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel71.Controls.Add(this.label39);
			this.panel71.Location = new System.Drawing.Point(64, 64);
			this.panel71.Name = "panel71";
			this.panel71.Size = new System.Drawing.Size(24, 24);
			this.panel71.TabIndex = 4;
			// 
			// label39
			// 
			this.label39.Location = new System.Drawing.Point(0, 0);
			this.label39.Name = "label39";
			this.label39.Size = new System.Drawing.Size(16, 16);
			this.label39.TabIndex = 9;
			this.label39.Text = "0";
			// 
			// panel52
			// 
			this.panel52.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel52.Controls.Add(this.panel53);
			this.panel52.Controls.Add(this.panel54);
			this.panel52.Controls.Add(this.panel55);
			this.panel52.Controls.Add(this.panel56);
			this.panel52.Controls.Add(this.panel57);
			this.panel52.Controls.Add(this.panel58);
			this.panel52.Controls.Add(this.panel59);
			this.panel52.Controls.Add(this.panel60);
			this.panel52.Controls.Add(this.panel61);
			this.panel52.Location = new System.Drawing.Point(104, 200);
			this.panel52.Name = "panel52";
			this.panel52.Size = new System.Drawing.Size(88, 88);
			this.panel52.TabIndex = 5;
			// 
			// panel53
			// 
			this.panel53.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel53.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel53.Controls.Add(this.label74);
			this.panel53.Location = new System.Drawing.Point(0, 0);
			this.panel53.Name = "panel53";
			this.panel53.Size = new System.Drawing.Size(24, 24);
			this.panel53.TabIndex = 1;
			// 
			// label74
			// 
			this.label74.Location = new System.Drawing.Point(0, 0);
			this.label74.Name = "label74";
			this.label74.Size = new System.Drawing.Size(16, 16);
			this.label74.TabIndex = 1;
			this.label74.Text = "0";
			// 
			// panel54
			// 
			this.panel54.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel54.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel54.Controls.Add(this.label75);
			this.panel54.Location = new System.Drawing.Point(32, 0);
			this.panel54.Name = "panel54";
			this.panel54.Size = new System.Drawing.Size(24, 24);
			this.panel54.TabIndex = 3;
			// 
			// label75
			// 
			this.label75.Location = new System.Drawing.Point(0, 0);
			this.label75.Name = "label75";
			this.label75.Size = new System.Drawing.Size(16, 16);
			this.label75.TabIndex = 2;
			this.label75.Text = "0";
			// 
			// panel55
			// 
			this.panel55.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel55.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel55.Controls.Add(this.label76);
			this.panel55.Location = new System.Drawing.Point(64, 0);
			this.panel55.Name = "panel55";
			this.panel55.Size = new System.Drawing.Size(24, 24);
			this.panel55.TabIndex = 4;
			// 
			// label76
			// 
			this.label76.Location = new System.Drawing.Point(0, 0);
			this.label76.Name = "label76";
			this.label76.Size = new System.Drawing.Size(16, 16);
			this.label76.TabIndex = 4;
			this.label76.Text = "0";
			// 
			// panel56
			// 
			this.panel56.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel56.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel56.Controls.Add(this.label86);
			this.panel56.Location = new System.Drawing.Point(64, 32);
			this.panel56.Name = "panel56";
			this.panel56.Size = new System.Drawing.Size(24, 24);
			this.panel56.TabIndex = 4;
			// 
			// label86
			// 
			this.label86.Location = new System.Drawing.Point(0, 0);
			this.label86.Name = "label86";
			this.label86.Size = new System.Drawing.Size(16, 16);
			this.label86.TabIndex = 7;
			this.label86.Text = "0";
			// 
			// panel57
			// 
			this.panel57.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel57.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel57.Controls.Add(this.label85);
			this.panel57.Location = new System.Drawing.Point(32, 32);
			this.panel57.Name = "panel57";
			this.panel57.Size = new System.Drawing.Size(24, 24);
			this.panel57.TabIndex = 4;
			// 
			// label85
			// 
			this.label85.Location = new System.Drawing.Point(0, 0);
			this.label85.Name = "label85";
			this.label85.Size = new System.Drawing.Size(16, 16);
			this.label85.TabIndex = 5;
			this.label85.Text = "0";
			// 
			// panel58
			// 
			this.panel58.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel58.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel58.Controls.Add(this.label84);
			this.panel58.Location = new System.Drawing.Point(0, 32);
			this.panel58.Name = "panel58";
			this.panel58.Size = new System.Drawing.Size(24, 24);
			this.panel58.TabIndex = 4;
			// 
			// label84
			// 
			this.label84.Location = new System.Drawing.Point(0, 0);
			this.label84.Name = "label84";
			this.label84.Size = new System.Drawing.Size(16, 16);
			this.label84.TabIndex = 3;
			this.label84.Text = "0";
			// 
			// panel59
			// 
			this.panel59.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel59.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel59.Controls.Add(this.label94);
			this.panel59.Location = new System.Drawing.Point(0, 64);
			this.panel59.Name = "panel59";
			this.panel59.Size = new System.Drawing.Size(24, 24);
			this.panel59.TabIndex = 4;
			// 
			// label94
			// 
			this.label94.Location = new System.Drawing.Point(0, 0);
			this.label94.Name = "label94";
			this.label94.Size = new System.Drawing.Size(16, 16);
			this.label94.TabIndex = 8;
			this.label94.Text = "0";
			// 
			// panel60
			// 
			this.panel60.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel60.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel60.Controls.Add(this.label95);
			this.panel60.Location = new System.Drawing.Point(32, 64);
			this.panel60.Name = "panel60";
			this.panel60.Size = new System.Drawing.Size(24, 24);
			this.panel60.TabIndex = 4;
			// 
			// label95
			// 
			this.label95.Location = new System.Drawing.Point(0, 0);
			this.label95.Name = "label95";
			this.label95.Size = new System.Drawing.Size(16, 16);
			this.label95.TabIndex = 6;
			this.label95.Text = "0";
			// 
			// panel61
			// 
			this.panel61.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel61.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel61.Controls.Add(this.label96);
			this.panel61.Location = new System.Drawing.Point(64, 64);
			this.panel61.Name = "panel61";
			this.panel61.Size = new System.Drawing.Size(24, 24);
			this.panel61.TabIndex = 4;
			// 
			// label96
			// 
			this.label96.Location = new System.Drawing.Point(0, 0);
			this.label96.Name = "label96";
			this.label96.Size = new System.Drawing.Size(16, 16);
			this.label96.TabIndex = 9;
			this.label96.Text = "0";
			// 
			// panel42
			// 
			this.panel42.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel42.Controls.Add(this.panel43);
			this.panel42.Controls.Add(this.panel44);
			this.panel42.Controls.Add(this.panel45);
			this.panel42.Controls.Add(this.panel46);
			this.panel42.Controls.Add(this.panel47);
			this.panel42.Controls.Add(this.panel48);
			this.panel42.Controls.Add(this.panel49);
			this.panel42.Controls.Add(this.panel50);
			this.panel42.Controls.Add(this.panel51);
			this.panel42.Location = new System.Drawing.Point(104, 104);
			this.panel42.Name = "panel42";
			this.panel42.Size = new System.Drawing.Size(88, 88);
			this.panel42.TabIndex = 4;
			// 
			// panel43
			// 
			this.panel43.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel43.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel43.Controls.Add(this.label44);
			this.panel43.Location = new System.Drawing.Point(0, 0);
			this.panel43.Name = "panel43";
			this.panel43.Size = new System.Drawing.Size(24, 24);
			this.panel43.TabIndex = 1;
			// 
			// label44
			// 
			this.label44.Location = new System.Drawing.Point(0, 0);
			this.label44.Name = "label44";
			this.label44.Size = new System.Drawing.Size(16, 16);
			this.label44.TabIndex = 1;
			this.label44.Text = "0";
			// 
			// panel44
			// 
			this.panel44.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel44.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel44.Controls.Add(this.label45);
			this.panel44.Location = new System.Drawing.Point(32, 0);
			this.panel44.Name = "panel44";
			this.panel44.Size = new System.Drawing.Size(24, 24);
			this.panel44.TabIndex = 3;
			// 
			// label45
			// 
			this.label45.Location = new System.Drawing.Point(0, 0);
			this.label45.Name = "label45";
			this.label45.Size = new System.Drawing.Size(16, 16);
			this.label45.TabIndex = 2;
			this.label45.Text = "0";
			// 
			// panel45
			// 
			this.panel45.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel45.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel45.Controls.Add(this.label46);
			this.panel45.Location = new System.Drawing.Point(64, 0);
			this.panel45.Name = "panel45";
			this.panel45.Size = new System.Drawing.Size(24, 24);
			this.panel45.TabIndex = 4;
			// 
			// label46
			// 
			this.label46.Location = new System.Drawing.Point(0, 0);
			this.label46.Name = "label46";
			this.label46.Size = new System.Drawing.Size(16, 16);
			this.label46.TabIndex = 4;
			this.label46.Text = "0";
			// 
			// panel46
			// 
			this.panel46.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel46.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel46.Controls.Add(this.label56);
			this.panel46.Location = new System.Drawing.Point(64, 32);
			this.panel46.Name = "panel46";
			this.panel46.Size = new System.Drawing.Size(24, 24);
			this.panel46.TabIndex = 4;
			// 
			// label56
			// 
			this.label56.Location = new System.Drawing.Point(0, 0);
			this.label56.Name = "label56";
			this.label56.Size = new System.Drawing.Size(16, 16);
			this.label56.TabIndex = 7;
			this.label56.Text = "0";
			// 
			// panel47
			// 
			this.panel47.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel47.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel47.Controls.Add(this.label55);
			this.panel47.Location = new System.Drawing.Point(32, 32);
			this.panel47.Name = "panel47";
			this.panel47.Size = new System.Drawing.Size(24, 24);
			this.panel47.TabIndex = 4;
			// 
			// label55
			// 
			this.label55.Location = new System.Drawing.Point(0, 0);
			this.label55.Name = "label55";
			this.label55.Size = new System.Drawing.Size(16, 16);
			this.label55.TabIndex = 5;
			this.label55.Text = "0";
			// 
			// panel48
			// 
			this.panel48.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel48.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel48.Controls.Add(this.label54);
			this.panel48.Location = new System.Drawing.Point(0, 32);
			this.panel48.Name = "panel48";
			this.panel48.Size = new System.Drawing.Size(24, 24);
			this.panel48.TabIndex = 4;
			// 
			// label54
			// 
			this.label54.Location = new System.Drawing.Point(0, 0);
			this.label54.Name = "label54";
			this.label54.Size = new System.Drawing.Size(16, 16);
			this.label54.TabIndex = 3;
			this.label54.Text = "0";
			// 
			// panel49
			// 
			this.panel49.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel49.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel49.Controls.Add(this.label64);
			this.panel49.Location = new System.Drawing.Point(0, 64);
			this.panel49.Name = "panel49";
			this.panel49.Size = new System.Drawing.Size(24, 24);
			this.panel49.TabIndex = 4;
			// 
			// label64
			// 
			this.label64.Location = new System.Drawing.Point(0, 0);
			this.label64.Name = "label64";
			this.label64.Size = new System.Drawing.Size(16, 16);
			this.label64.TabIndex = 8;
			this.label64.Text = "0";
			// 
			// panel50
			// 
			this.panel50.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel50.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel50.Controls.Add(this.label65);
			this.panel50.Location = new System.Drawing.Point(32, 64);
			this.panel50.Name = "panel50";
			this.panel50.Size = new System.Drawing.Size(24, 24);
			this.panel50.TabIndex = 4;
			// 
			// label65
			// 
			this.label65.Location = new System.Drawing.Point(0, 0);
			this.label65.Name = "label65";
			this.label65.Size = new System.Drawing.Size(16, 16);
			this.label65.TabIndex = 6;
			this.label65.Text = "0";
			// 
			// panel51
			// 
			this.panel51.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel51.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel51.Controls.Add(this.label66);
			this.panel51.Location = new System.Drawing.Point(64, 64);
			this.panel51.Name = "panel51";
			this.panel51.Size = new System.Drawing.Size(24, 24);
			this.panel51.TabIndex = 4;
			// 
			// label66
			// 
			this.label66.Location = new System.Drawing.Point(0, 0);
			this.label66.Name = "label66";
			this.label66.Size = new System.Drawing.Size(16, 16);
			this.label66.TabIndex = 9;
			this.label66.Text = "0";
			// 
			// panel32
			// 
			this.panel32.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel32.Controls.Add(this.panel33);
			this.panel32.Controls.Add(this.panel34);
			this.panel32.Controls.Add(this.panel35);
			this.panel32.Controls.Add(this.panel36);
			this.panel32.Controls.Add(this.panel37);
			this.panel32.Controls.Add(this.panel38);
			this.panel32.Controls.Add(this.panel39);
			this.panel32.Controls.Add(this.panel40);
			this.panel32.Controls.Add(this.panel41);
			this.panel32.Location = new System.Drawing.Point(104, 8);
			this.panel32.Name = "panel32";
			this.panel32.Size = new System.Drawing.Size(88, 88);
			this.panel32.TabIndex = 3;
			// 
			// panel33
			// 
			this.panel33.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel33.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel33.Controls.Add(this.label14);
			this.panel33.Location = new System.Drawing.Point(0, 0);
			this.panel33.Name = "panel33";
			this.panel33.Size = new System.Drawing.Size(24, 24);
			this.panel33.TabIndex = 1;
			// 
			// label14
			// 
			this.label14.Location = new System.Drawing.Point(0, 0);
			this.label14.Name = "label14";
			this.label14.Size = new System.Drawing.Size(16, 16);
			this.label14.TabIndex = 1;
			this.label14.Text = "0";
			// 
			// panel34
			// 
			this.panel34.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel34.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel34.Controls.Add(this.label15);
			this.panel34.Location = new System.Drawing.Point(32, 0);
			this.panel34.Name = "panel34";
			this.panel34.Size = new System.Drawing.Size(24, 24);
			this.panel34.TabIndex = 3;
			// 
			// label15
			// 
			this.label15.Location = new System.Drawing.Point(0, 0);
			this.label15.Name = "label15";
			this.label15.Size = new System.Drawing.Size(16, 16);
			this.label15.TabIndex = 2;
			this.label15.Text = "0";
			// 
			// panel35
			// 
			this.panel35.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel35.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel35.Controls.Add(this.label16);
			this.panel35.Location = new System.Drawing.Point(64, 0);
			this.panel35.Name = "panel35";
			this.panel35.Size = new System.Drawing.Size(24, 24);
			this.panel35.TabIndex = 4;
			// 
			// label16
			// 
			this.label16.Location = new System.Drawing.Point(0, 0);
			this.label16.Name = "label16";
			this.label16.Size = new System.Drawing.Size(16, 16);
			this.label16.TabIndex = 4;
			this.label16.Text = "0";
			// 
			// panel36
			// 
			this.panel36.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel36.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel36.Controls.Add(this.label26);
			this.panel36.Location = new System.Drawing.Point(64, 32);
			this.panel36.Name = "panel36";
			this.panel36.Size = new System.Drawing.Size(24, 24);
			this.panel36.TabIndex = 4;
			// 
			// label26
			// 
			this.label26.Location = new System.Drawing.Point(0, 0);
			this.label26.Name = "label26";
			this.label26.Size = new System.Drawing.Size(16, 16);
			this.label26.TabIndex = 7;
			this.label26.Text = "0";
			// 
			// panel37
			// 
			this.panel37.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel37.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel37.Controls.Add(this.label25);
			this.panel37.Location = new System.Drawing.Point(32, 32);
			this.panel37.Name = "panel37";
			this.panel37.Size = new System.Drawing.Size(24, 24);
			this.panel37.TabIndex = 4;
			// 
			// label25
			// 
			this.label25.Location = new System.Drawing.Point(0, 0);
			this.label25.Name = "label25";
			this.label25.Size = new System.Drawing.Size(16, 16);
			this.label25.TabIndex = 5;
			this.label25.Text = "0";
			// 
			// panel38
			// 
			this.panel38.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel38.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel38.Controls.Add(this.label24);
			this.panel38.Location = new System.Drawing.Point(0, 32);
			this.panel38.Name = "panel38";
			this.panel38.Size = new System.Drawing.Size(24, 24);
			this.panel38.TabIndex = 4;
			// 
			// label24
			// 
			this.label24.Location = new System.Drawing.Point(0, 0);
			this.label24.Name = "label24";
			this.label24.Size = new System.Drawing.Size(16, 16);
			this.label24.TabIndex = 3;
			this.label24.Text = "0";
			// 
			// panel39
			// 
			this.panel39.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel39.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel39.Controls.Add(this.label34);
			this.panel39.Location = new System.Drawing.Point(0, 64);
			this.panel39.Name = "panel39";
			this.panel39.Size = new System.Drawing.Size(24, 24);
			this.panel39.TabIndex = 4;
			// 
			// label34
			// 
			this.label34.Location = new System.Drawing.Point(0, 0);
			this.label34.Name = "label34";
			this.label34.Size = new System.Drawing.Size(16, 16);
			this.label34.TabIndex = 8;
			this.label34.Text = "0";
			// 
			// panel40
			// 
			this.panel40.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel40.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel40.Controls.Add(this.label35);
			this.panel40.Location = new System.Drawing.Point(32, 64);
			this.panel40.Name = "panel40";
			this.panel40.Size = new System.Drawing.Size(24, 24);
			this.panel40.TabIndex = 4;
			// 
			// label35
			// 
			this.label35.Location = new System.Drawing.Point(0, 0);
			this.label35.Name = "label35";
			this.label35.Size = new System.Drawing.Size(16, 16);
			this.label35.TabIndex = 6;
			this.label35.Text = "0";
			// 
			// panel41
			// 
			this.panel41.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel41.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel41.Controls.Add(this.label36);
			this.panel41.Location = new System.Drawing.Point(64, 64);
			this.panel41.Name = "panel41";
			this.panel41.Size = new System.Drawing.Size(24, 24);
			this.panel41.TabIndex = 4;
			// 
			// label36
			// 
			this.label36.Location = new System.Drawing.Point(0, 0);
			this.label36.Name = "label36";
			this.label36.Size = new System.Drawing.Size(16, 16);
			this.label36.TabIndex = 9;
			this.label36.Text = "0";
			// 
			// panel22
			// 
			this.panel22.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel22.Controls.Add(this.panel23);
			this.panel22.Controls.Add(this.panel24);
			this.panel22.Controls.Add(this.panel25);
			this.panel22.Controls.Add(this.panel26);
			this.panel22.Controls.Add(this.panel27);
			this.panel22.Controls.Add(this.panel28);
			this.panel22.Controls.Add(this.panel29);
			this.panel22.Controls.Add(this.panel30);
			this.panel22.Controls.Add(this.panel31);
			this.panel22.Location = new System.Drawing.Point(8, 200);
			this.panel22.Name = "panel22";
			this.panel22.Size = new System.Drawing.Size(88, 88);
			this.panel22.TabIndex = 2;
			// 
			// panel23
			// 
			this.panel23.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel23.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel23.Controls.Add(this.label71);
			this.panel23.Location = new System.Drawing.Point(0, 0);
			this.panel23.Name = "panel23";
			this.panel23.Size = new System.Drawing.Size(24, 24);
			this.panel23.TabIndex = 1;
			// 
			// label71
			// 
			this.label71.Location = new System.Drawing.Point(0, 0);
			this.label71.Name = "label71";
			this.label71.Size = new System.Drawing.Size(16, 16);
			this.label71.TabIndex = 1;
			this.label71.Text = "0";
			// 
			// panel24
			// 
			this.panel24.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel24.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel24.Controls.Add(this.label72);
			this.panel24.Location = new System.Drawing.Point(32, 0);
			this.panel24.Name = "panel24";
			this.panel24.Size = new System.Drawing.Size(24, 24);
			this.panel24.TabIndex = 3;
			// 
			// label72
			// 
			this.label72.Location = new System.Drawing.Point(0, 0);
			this.label72.Name = "label72";
			this.label72.Size = new System.Drawing.Size(16, 16);
			this.label72.TabIndex = 2;
			this.label72.Text = "0";
			// 
			// panel25
			// 
			this.panel25.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel25.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel25.Controls.Add(this.label73);
			this.panel25.Location = new System.Drawing.Point(64, 0);
			this.panel25.Name = "panel25";
			this.panel25.Size = new System.Drawing.Size(24, 24);
			this.panel25.TabIndex = 4;
			// 
			// label73
			// 
			this.label73.Location = new System.Drawing.Point(0, 0);
			this.label73.Name = "label73";
			this.label73.Size = new System.Drawing.Size(16, 16);
			this.label73.TabIndex = 4;
			this.label73.Text = "0";
			// 
			// panel26
			// 
			this.panel26.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel26.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel26.Controls.Add(this.label83);
			this.panel26.Location = new System.Drawing.Point(64, 32);
			this.panel26.Name = "panel26";
			this.panel26.Size = new System.Drawing.Size(24, 24);
			this.panel26.TabIndex = 4;
			// 
			// label83
			// 
			this.label83.Location = new System.Drawing.Point(0, 0);
			this.label83.Name = "label83";
			this.label83.Size = new System.Drawing.Size(16, 16);
			this.label83.TabIndex = 7;
			this.label83.Text = "0";
			// 
			// panel27
			// 
			this.panel27.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel27.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel27.Controls.Add(this.label82);
			this.panel27.Location = new System.Drawing.Point(32, 32);
			this.panel27.Name = "panel27";
			this.panel27.Size = new System.Drawing.Size(24, 24);
			this.panel27.TabIndex = 4;
			// 
			// label82
			// 
			this.label82.Location = new System.Drawing.Point(0, 0);
			this.label82.Name = "label82";
			this.label82.Size = new System.Drawing.Size(16, 16);
			this.label82.TabIndex = 5;
			this.label82.Text = "0";
			// 
			// panel28
			// 
			this.panel28.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel28.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel28.Controls.Add(this.label81);
			this.panel28.Location = new System.Drawing.Point(0, 32);
			this.panel28.Name = "panel28";
			this.panel28.Size = new System.Drawing.Size(24, 24);
			this.panel28.TabIndex = 4;
			// 
			// label81
			// 
			this.label81.Location = new System.Drawing.Point(0, 0);
			this.label81.Name = "label81";
			this.label81.Size = new System.Drawing.Size(16, 16);
			this.label81.TabIndex = 3;
			this.label81.Text = "0";
			// 
			// panel29
			// 
			this.panel29.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel29.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel29.Controls.Add(this.label91);
			this.panel29.Location = new System.Drawing.Point(0, 64);
			this.panel29.Name = "panel29";
			this.panel29.Size = new System.Drawing.Size(24, 24);
			this.panel29.TabIndex = 4;
			// 
			// label91
			// 
			this.label91.Location = new System.Drawing.Point(0, 0);
			this.label91.Name = "label91";
			this.label91.Size = new System.Drawing.Size(16, 16);
			this.label91.TabIndex = 8;
			this.label91.Text = "0";
			// 
			// panel30
			// 
			this.panel30.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel30.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel30.Controls.Add(this.label92);
			this.panel30.Location = new System.Drawing.Point(32, 64);
			this.panel30.Name = "panel30";
			this.panel30.Size = new System.Drawing.Size(24, 24);
			this.panel30.TabIndex = 4;
			// 
			// label92
			// 
			this.label92.Location = new System.Drawing.Point(0, 0);
			this.label92.Name = "label92";
			this.label92.Size = new System.Drawing.Size(16, 16);
			this.label92.TabIndex = 6;
			this.label92.Text = "0";
			// 
			// panel31
			// 
			this.panel31.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel31.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel31.Controls.Add(this.label93);
			this.panel31.Location = new System.Drawing.Point(64, 64);
			this.panel31.Name = "panel31";
			this.panel31.Size = new System.Drawing.Size(24, 24);
			this.panel31.TabIndex = 4;
			// 
			// label93
			// 
			this.label93.Location = new System.Drawing.Point(0, 0);
			this.label93.Name = "label93";
			this.label93.Size = new System.Drawing.Size(16, 16);
			this.label93.TabIndex = 9;
			this.label93.Text = "0";
			// 
			// panel12
			// 
			this.panel12.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel12.Controls.Add(this.panel13);
			this.panel12.Controls.Add(this.panel14);
			this.panel12.Controls.Add(this.panel15);
			this.panel12.Controls.Add(this.panel16);
			this.panel12.Controls.Add(this.panel17);
			this.panel12.Controls.Add(this.panel18);
			this.panel12.Controls.Add(this.panel19);
			this.panel12.Controls.Add(this.panel20);
			this.panel12.Controls.Add(this.panel21);
			this.panel12.Location = new System.Drawing.Point(8, 104);
			this.panel12.Name = "panel12";
			this.panel12.Size = new System.Drawing.Size(88, 88);
			this.panel12.TabIndex = 1;
			// 
			// panel13
			// 
			this.panel13.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel13.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel13.Controls.Add(this.label41);
			this.panel13.Location = new System.Drawing.Point(0, 0);
			this.panel13.Name = "panel13";
			this.panel13.Size = new System.Drawing.Size(24, 24);
			this.panel13.TabIndex = 1;
			// 
			// label41
			// 
			this.label41.Location = new System.Drawing.Point(0, 0);
			this.label41.Name = "label41";
			this.label41.Size = new System.Drawing.Size(16, 16);
			this.label41.TabIndex = 1;
			this.label41.Text = "0";
			// 
			// panel14
			// 
			this.panel14.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel14.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel14.Controls.Add(this.label42);
			this.panel14.Location = new System.Drawing.Point(32, 0);
			this.panel14.Name = "panel14";
			this.panel14.Size = new System.Drawing.Size(24, 24);
			this.panel14.TabIndex = 3;
			// 
			// label42
			// 
			this.label42.Location = new System.Drawing.Point(0, 0);
			this.label42.Name = "label42";
			this.label42.Size = new System.Drawing.Size(16, 16);
			this.label42.TabIndex = 2;
			this.label42.Text = "0";
			// 
			// panel15
			// 
			this.panel15.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel15.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel15.Controls.Add(this.label43);
			this.panel15.Location = new System.Drawing.Point(64, 0);
			this.panel15.Name = "panel15";
			this.panel15.Size = new System.Drawing.Size(24, 24);
			this.panel15.TabIndex = 4;
			// 
			// label43
			// 
			this.label43.Location = new System.Drawing.Point(0, 0);
			this.label43.Name = "label43";
			this.label43.Size = new System.Drawing.Size(16, 16);
			this.label43.TabIndex = 4;
			this.label43.Text = "0";
			// 
			// panel16
			// 
			this.panel16.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel16.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel16.Controls.Add(this.label53);
			this.panel16.Location = new System.Drawing.Point(64, 32);
			this.panel16.Name = "panel16";
			this.panel16.Size = new System.Drawing.Size(24, 24);
			this.panel16.TabIndex = 4;
			// 
			// label53
			// 
			this.label53.Location = new System.Drawing.Point(0, 0);
			this.label53.Name = "label53";
			this.label53.Size = new System.Drawing.Size(16, 16);
			this.label53.TabIndex = 7;
			this.label53.Text = "0";
			// 
			// panel17
			// 
			this.panel17.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel17.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel17.Controls.Add(this.label52);
			this.panel17.Location = new System.Drawing.Point(32, 32);
			this.panel17.Name = "panel17";
			this.panel17.Size = new System.Drawing.Size(24, 24);
			this.panel17.TabIndex = 4;
			// 
			// label52
			// 
			this.label52.Location = new System.Drawing.Point(0, 0);
			this.label52.Name = "label52";
			this.label52.Size = new System.Drawing.Size(16, 16);
			this.label52.TabIndex = 5;
			this.label52.Text = "0";
			// 
			// panel18
			// 
			this.panel18.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel18.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel18.Controls.Add(this.label51);
			this.panel18.Location = new System.Drawing.Point(0, 32);
			this.panel18.Name = "panel18";
			this.panel18.Size = new System.Drawing.Size(24, 24);
			this.panel18.TabIndex = 4;
			// 
			// label51
			// 
			this.label51.Location = new System.Drawing.Point(0, 0);
			this.label51.Name = "label51";
			this.label51.Size = new System.Drawing.Size(16, 16);
			this.label51.TabIndex = 3;
			this.label51.Text = "0";
			// 
			// panel19
			// 
			this.panel19.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel19.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel19.Controls.Add(this.label61);
			this.panel19.Location = new System.Drawing.Point(0, 64);
			this.panel19.Name = "panel19";
			this.panel19.Size = new System.Drawing.Size(24, 24);
			this.panel19.TabIndex = 4;
			// 
			// label61
			// 
			this.label61.Location = new System.Drawing.Point(0, 0);
			this.label61.Name = "label61";
			this.label61.Size = new System.Drawing.Size(16, 16);
			this.label61.TabIndex = 8;
			this.label61.Text = "0";
			// 
			// panel20
			// 
			this.panel20.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel20.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel20.Controls.Add(this.label62);
			this.panel20.Location = new System.Drawing.Point(32, 64);
			this.panel20.Name = "panel20";
			this.panel20.Size = new System.Drawing.Size(24, 24);
			this.panel20.TabIndex = 4;
			// 
			// label62
			// 
			this.label62.Location = new System.Drawing.Point(0, 0);
			this.label62.Name = "label62";
			this.label62.Size = new System.Drawing.Size(16, 16);
			this.label62.TabIndex = 6;
			this.label62.Text = "0";
			// 
			// panel21
			// 
			this.panel21.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel21.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel21.Controls.Add(this.label63);
			this.panel21.Location = new System.Drawing.Point(64, 64);
			this.panel21.Name = "panel21";
			this.panel21.Size = new System.Drawing.Size(24, 24);
			this.panel21.TabIndex = 4;
			// 
			// label63
			// 
			this.label63.Location = new System.Drawing.Point(0, 0);
			this.label63.Name = "label63";
			this.label63.Size = new System.Drawing.Size(16, 16);
			this.label63.TabIndex = 9;
			this.label63.Text = "0";
			// 
			// panel2
			// 
			this.panel2.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.panel2.Controls.Add(this.panel3);
			this.panel2.Controls.Add(this.panel5);
			this.panel2.Controls.Add(this.panel4);
			this.panel2.Controls.Add(this.panel6);
			this.panel2.Controls.Add(this.panel7);
			this.panel2.Controls.Add(this.panel8);
			this.panel2.Controls.Add(this.panel9);
			this.panel2.Controls.Add(this.panel10);
			this.panel2.Controls.Add(this.panel11);
			this.panel2.Location = new System.Drawing.Point(8, 8);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(88, 88);
			this.panel2.TabIndex = 0;
			// 
			// panel3
			// 
			this.panel3.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel3.Controls.Add(this.label11);
			this.panel3.Location = new System.Drawing.Point(0, 0);
			this.panel3.Name = "panel3";
			this.panel3.Size = new System.Drawing.Size(24, 24);
			this.panel3.TabIndex = 1;
			// 
			// label11
			// 
			this.label11.Location = new System.Drawing.Point(0, 0);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(16, 16);
			this.label11.TabIndex = 1;
			this.label11.Text = "0";
			// 
			// panel5
			// 
			this.panel5.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel5.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel5.Controls.Add(this.label12);
			this.panel5.Location = new System.Drawing.Point(32, 0);
			this.panel5.Name = "panel5";
			this.panel5.Size = new System.Drawing.Size(24, 24);
			this.panel5.TabIndex = 3;
			// 
			// label12
			// 
			this.label12.Location = new System.Drawing.Point(0, 0);
			this.label12.Name = "label12";
			this.label12.Size = new System.Drawing.Size(16, 16);
			this.label12.TabIndex = 2;
			this.label12.Text = "0";
			// 
			// panel4
			// 
			this.panel4.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel4.Controls.Add(this.label13);
			this.panel4.Location = new System.Drawing.Point(64, 0);
			this.panel4.Name = "panel4";
			this.panel4.Size = new System.Drawing.Size(24, 24);
			this.panel4.TabIndex = 4;
			// 
			// label13
			// 
			this.label13.Location = new System.Drawing.Point(0, 0);
			this.label13.Name = "label13";
			this.label13.Size = new System.Drawing.Size(16, 16);
			this.label13.TabIndex = 4;
			this.label13.Text = "0";
			// 
			// panel6
			// 
			this.panel6.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel6.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel6.Controls.Add(this.label23);
			this.panel6.Location = new System.Drawing.Point(64, 32);
			this.panel6.Name = "panel6";
			this.panel6.Size = new System.Drawing.Size(24, 24);
			this.panel6.TabIndex = 4;
			// 
			// label23
			// 
			this.label23.Location = new System.Drawing.Point(0, 0);
			this.label23.Name = "label23";
			this.label23.Size = new System.Drawing.Size(16, 16);
			this.label23.TabIndex = 7;
			this.label23.Text = "0";
			// 
			// panel7
			// 
			this.panel7.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel7.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel7.Controls.Add(this.label22);
			this.panel7.Location = new System.Drawing.Point(32, 32);
			this.panel7.Name = "panel7";
			this.panel7.Size = new System.Drawing.Size(24, 24);
			this.panel7.TabIndex = 4;
			// 
			// label22
			// 
			this.label22.Location = new System.Drawing.Point(0, 0);
			this.label22.Name = "label22";
			this.label22.Size = new System.Drawing.Size(16, 16);
			this.label22.TabIndex = 5;
			this.label22.Text = "0";
			// 
			// panel8
			// 
			this.panel8.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel8.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel8.Controls.Add(this.label21);
			this.panel8.Location = new System.Drawing.Point(0, 32);
			this.panel8.Name = "panel8";
			this.panel8.Size = new System.Drawing.Size(24, 24);
			this.panel8.TabIndex = 4;
			// 
			// label21
			// 
			this.label21.Location = new System.Drawing.Point(0, 0);
			this.label21.Name = "label21";
			this.label21.Size = new System.Drawing.Size(16, 16);
			this.label21.TabIndex = 3;
			this.label21.Text = "0";
			// 
			// panel9
			// 
			this.panel9.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel9.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel9.Controls.Add(this.label31);
			this.panel9.Location = new System.Drawing.Point(0, 64);
			this.panel9.Name = "panel9";
			this.panel9.Size = new System.Drawing.Size(24, 24);
			this.panel9.TabIndex = 4;
			// 
			// label31
			// 
			this.label31.Location = new System.Drawing.Point(0, 0);
			this.label31.Name = "label31";
			this.label31.Size = new System.Drawing.Size(16, 16);
			this.label31.TabIndex = 8;
			this.label31.Text = "0";
			// 
			// panel10
			// 
			this.panel10.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel10.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel10.Controls.Add(this.label32);
			this.panel10.Location = new System.Drawing.Point(32, 64);
			this.panel10.Name = "panel10";
			this.panel10.Size = new System.Drawing.Size(24, 24);
			this.panel10.TabIndex = 4;
			// 
			// label32
			// 
			this.label32.Location = new System.Drawing.Point(0, 0);
			this.label32.Name = "label32";
			this.label32.Size = new System.Drawing.Size(16, 16);
			this.label32.TabIndex = 6;
			this.label32.Text = "0";
			// 
			// panel11
			// 
			this.panel11.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(255)));
			this.panel11.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.panel11.Controls.Add(this.label33);
			this.panel11.Location = new System.Drawing.Point(64, 64);
			this.panel11.Name = "panel11";
			this.panel11.Size = new System.Drawing.Size(24, 24);
			this.panel11.TabIndex = 4;
			// 
			// label33
			// 
			this.label33.Location = new System.Drawing.Point(0, 0);
			this.label33.Name = "label33";
			this.label33.Size = new System.Drawing.Size(16, 16);
			this.label33.TabIndex = 9;
			this.label33.Text = "0";
			// 
			// button1
			// 
			this.button1.BackColor = System.Drawing.Color.Olive;
			this.button1.Location = new System.Drawing.Point(40, 48);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(80, 32);
			this.button1.TabIndex = 1;
			this.button1.Text = "Atidaryti faila";
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// label1
			// 
			this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
				| System.Windows.Forms.AnchorStyles.Right)));
			this.label1.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(128)), ((System.Byte)(0)));
			this.label1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label1.Location = new System.Drawing.Point(256, 8);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(120, 23);
			this.label1.TabIndex = 5;
			this.label1.Text = "Klientas";
			// 
			// button5
			// 
			this.button5.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(0)), ((System.Byte)(192)));
			this.button5.Location = new System.Drawing.Point(464, 144);
			this.button5.Name = "button5";
			this.button5.TabIndex = 6;
			this.button5.Text = "Išeiti";
			this.button5.Click += new System.EventHandler(this.button5_Click);
			// 
			// textBox1
			// 
			this.textBox1.Location = new System.Drawing.Point(40, 96);
			this.textBox1.Name = "textBox1";
			this.textBox1.Size = new System.Drawing.Size(80, 20);
			this.textBox1.TabIndex = 7;
			this.textBox1.Text = "d:\\input.txt";
			// 
			// label3
			// 
			this.label3.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.label3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label3.Location = new System.Drawing.Point(40, 128);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(88, 32);
			this.label3.TabIndex = 9;
			this.label3.Text = "Cia iveskite failo pavadinima";
			// 
			// button3
			// 
			this.button3.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(0)), ((System.Byte)(192)));
			this.button3.Location = new System.Drawing.Point(464, 48);
			this.button3.Name = "button3";
			this.button3.TabIndex = 10;
			this.button3.Text = "Prisijungti";
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// button4
			// 
			this.button4.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(0)), ((System.Byte)(192)));
			this.button4.Location = new System.Drawing.Point(464, 80);
			this.button4.Name = "button4";
			this.button4.TabIndex = 11;
			this.button4.Text = "Blokuoti";
			this.button4.Click += new System.EventHandler(this.button4_Click);
			// 
			// button6
			// 
			this.button6.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(0)), ((System.Byte)(192)));
			this.button6.Location = new System.Drawing.Point(464, 112);
			this.button6.Name = "button6";
			this.button6.TabIndex = 12;
			this.button6.Text = "Atsijungti";
			this.button6.Click += new System.EventHandler(this.button6_Click);
			// 
			// label4
			// 
			this.label4.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.label4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label4.Location = new System.Drawing.Point(480, 296);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(48, 23);
			this.label4.TabIndex = 0;
			this.label4.Text = "Busena";
			// 
			// label5
			// 
			this.label5.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(224)), ((System.Byte)(224)), ((System.Byte)(224)));
			this.label5.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label5.Location = new System.Drawing.Point(464, 184);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(72, 23);
			this.label5.TabIndex = 1;
			// 
			// label6
			// 
			this.label6.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.label6.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label6.Location = new System.Drawing.Point(488, 216);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(24, 23);
			this.label6.TabIndex = 14;
			this.label6.Text = "ID";
			// 
			// label7
			// 
			this.label7.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(224)), ((System.Byte)(224)), ((System.Byte)(224)));
			this.label7.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
			this.label7.Location = new System.Drawing.Point(464, 256);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(72, 23);
			this.label7.TabIndex = 15;
			this.label7.Text = "Neuzimta";
			// 
			// textBox2
			// 
			this.textBox2.Location = new System.Drawing.Point(544, 48);
			this.textBox2.Name = "textBox2";
			this.textBox2.Size = new System.Drawing.Size(72, 20);
			this.textBox2.TabIndex = 16;
			this.textBox2.Text = "127.0.0.1";
			// 
			// textBox3
			// 
			this.textBox3.Location = new System.Drawing.Point(544, 72);
			this.textBox3.Name = "textBox3";
			this.textBox3.Size = new System.Drawing.Size(72, 20);
			this.textBox3.TabIndex = 17;
			this.textBox3.Text = "2001";
			// 
			// label8
			// 
			this.label8.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.label8.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label8.Location = new System.Drawing.Point(512, 16);
			this.label8.Name = "label8";
			this.label8.TabIndex = 18;
			this.label8.Text = "Adresas";
			// 
			// label9
			// 
			this.label9.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(128)));
			this.label9.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.label9.Location = new System.Drawing.Point(544, 96);
			this.label9.Name = "label9";
			this.label9.Size = new System.Drawing.Size(64, 23);
			this.label9.TabIndex = 19;
			this.label9.Text = "Portas";
			// 
			// button7
			// 
			this.button7.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(0)), ((System.Byte)(192)));
			this.button7.Location = new System.Drawing.Point(544, 144);
			this.button7.Name = "button7";
			this.button7.TabIndex = 20;
			this.button7.Text = "Siusti";
			this.button7.Click += new System.EventHandler(this.button7_Click);
			// 
			// label10
			// 
			this.label10.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(192)));
			this.label10.Location = new System.Drawing.Point(24, 328);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(592, 23);
			this.label10.TabIndex = 21;
			// 
			// label20
			// 
			this.label20.Location = new System.Drawing.Point(24, 296);
			this.label20.Name = "label20";
			this.label20.Size = new System.Drawing.Size(32, 23);
			this.label20.TabIndex = 22;
			this.label20.Text = "0";
			// 
			// label30
			// 
			this.label30.Location = new System.Drawing.Point(64, 296);
			this.label30.Name = "label30";
			this.label30.Size = new System.Drawing.Size(24, 23);
			this.label30.TabIndex = 23;
			// 
			// button8
			// 
			this.button8.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(0)), ((System.Byte)(192)));
			this.button8.Location = new System.Drawing.Point(544, 184);
			this.button8.Name = "button8";
			this.button8.TabIndex = 24;
			this.button8.Text = "Gauti";
			this.button8.Click += new System.EventHandler(this.button8_Click);
			// 
			// Form1
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.AutoScroll = true;
			this.BackColor = System.Drawing.Color.FromArgb(((System.Byte)(255)), ((System.Byte)(192)), ((System.Byte)(192)));
			this.ClientSize = new System.Drawing.Size(624, 358);
			this.Controls.Add(this.button8);
			this.Controls.Add(this.label30);
			this.Controls.Add(this.label20);
			this.Controls.Add(this.label10);
			this.Controls.Add(this.button7);
			this.Controls.Add(this.label9);
			this.Controls.Add(this.label8);
			this.Controls.Add(this.textBox3);
			this.Controls.Add(this.textBox2);
			this.Controls.Add(this.label7);
			this.Controls.Add(this.label6);
			this.Controls.Add(this.button6);
			this.Controls.Add(this.button4);
			this.Controls.Add(this.button3);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.textBox1);
			this.Controls.Add(this.button5);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button1);
			this.Controls.Add(this.panel1);
			this.Controls.Add(this.label5);
			this.Controls.Add(this.label4);
			this.MaximizeBox = false;
			this.Name = "Form1";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Sudoku";
			this.panel1.ResumeLayout(false);
			this.panel82.ResumeLayout(false);
			this.panel83.ResumeLayout(false);
			this.panel84.ResumeLayout(false);
			this.panel85.ResumeLayout(false);
			this.panel86.ResumeLayout(false);
			this.panel87.ResumeLayout(false);
			this.panel88.ResumeLayout(false);
			this.panel89.ResumeLayout(false);
			this.panel90.ResumeLayout(false);
			this.panel91.ResumeLayout(false);
			this.panel72.ResumeLayout(false);
			this.panel73.ResumeLayout(false);
			this.panel74.ResumeLayout(false);
			this.panel75.ResumeLayout(false);
			this.panel76.ResumeLayout(false);
			this.panel77.ResumeLayout(false);
			this.panel78.ResumeLayout(false);
			this.panel79.ResumeLayout(false);
			this.panel80.ResumeLayout(false);
			this.panel81.ResumeLayout(false);
			this.panel62.ResumeLayout(false);
			this.panel63.ResumeLayout(false);
			this.panel64.ResumeLayout(false);
			this.panel65.ResumeLayout(false);
			this.panel66.ResumeLayout(false);
			this.panel67.ResumeLayout(false);
			this.panel68.ResumeLayout(false);
			this.panel69.ResumeLayout(false);
			this.panel70.ResumeLayout(false);
			this.panel71.ResumeLayout(false);
			this.panel52.ResumeLayout(false);
			this.panel53.ResumeLayout(false);
			this.panel54.ResumeLayout(false);
			this.panel55.ResumeLayout(false);
			this.panel56.ResumeLayout(false);
			this.panel57.ResumeLayout(false);
			this.panel58.ResumeLayout(false);
			this.panel59.ResumeLayout(false);
			this.panel60.ResumeLayout(false);
			this.panel61.ResumeLayout(false);
			this.panel42.ResumeLayout(false);
			this.panel43.ResumeLayout(false);
			this.panel44.ResumeLayout(false);
			this.panel45.ResumeLayout(false);
			this.panel46.ResumeLayout(false);
			this.panel47.ResumeLayout(false);
			this.panel48.ResumeLayout(false);
			this.panel49.ResumeLayout(false);
			this.panel50.ResumeLayout(false);
			this.panel51.ResumeLayout(false);
			this.panel32.ResumeLayout(false);
			this.panel33.ResumeLayout(false);
			this.panel34.ResumeLayout(false);
			this.panel35.ResumeLayout(false);
			this.panel36.ResumeLayout(false);
			this.panel37.ResumeLayout(false);
			this.panel38.ResumeLayout(false);
			this.panel39.ResumeLayout(false);
			this.panel40.ResumeLayout(false);
			this.panel41.ResumeLayout(false);
			this.panel22.ResumeLayout(false);
			this.panel23.ResumeLayout(false);
			this.panel24.ResumeLayout(false);
			this.panel25.ResumeLayout(false);
			this.panel26.ResumeLayout(false);
			this.panel27.ResumeLayout(false);
			this.panel28.ResumeLayout(false);
			this.panel29.ResumeLayout(false);
			this.panel30.ResumeLayout(false);
			this.panel31.ResumeLayout(false);
			this.panel12.ResumeLayout(false);
			this.panel13.ResumeLayout(false);
			this.panel14.ResumeLayout(false);
			this.panel15.ResumeLayout(false);
			this.panel16.ResumeLayout(false);
			this.panel17.ResumeLayout(false);
			this.panel18.ResumeLayout(false);
			this.panel19.ResumeLayout(false);
			this.panel20.ResumeLayout(false);
			this.panel21.ResumeLayout(false);
			this.panel2.ResumeLayout(false);
			this.panel3.ResumeLayout(false);
			this.panel5.ResumeLayout(false);
			this.panel4.ResumeLayout(false);
			this.panel6.ResumeLayout(false);
			this.panel7.ResumeLayout(false);
			this.panel8.ResumeLayout(false);
			this.panel9.ResumeLayout(false);
			this.panel10.ResumeLayout(false);
			this.panel11.ResumeLayout(false);
			this.ResumeLayout(false);

		}
		#endregion

		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]

		

		/*static void Main() 
		{
			Application.Run(new Form1());
			
		}*/

		private void button1_Click(object sender, System.EventArgs e)
		{
			try
			{
				StreamReader s = File.OpenText(textBox1.Text);
				S.isFailo(s);
				perpaisyti();
			} 
			catch (Exception f)
			{
				MessageBox.Show("Blogas failas");
				f.ToString();
			}

		}

		private void button5_Click(object sender, System.EventArgs e)
		{
			if (label7.Text == "Neuzimta")
			{
				try
				{
					label10.Text = "a1";
					byte[] byData1 = System.Text.Encoding.ASCII.GetBytes(label10.Text.ToString());
					client.Send (byData1);
					client.Close();
					this.Close();
				}
				catch (Exception f)
				{
					MessageBox.Show(f.ToString());
				}
			} 
			else 
			{
				MessageBox.Show("Negalima atsijungti - sesija nebaigta!");
			}
		}

		private void perpaisyti()
		{
			label11.Text = S.converse2(S.isorinis[1,1]);
			label12.Text = S.converse2(S.isorinis[1,2]);
			label13.Text = S.converse2(S.isorinis[1,3]);
			label14.Text = S.converse2(S.isorinis[1,4]);
			label15.Text = S.converse2(S.isorinis[1,5]);
			label16.Text = S.converse2(S.isorinis[1,6]);
			label17.Text = S.converse2(S.isorinis[1,7]);
			label18.Text = S.converse2(S.isorinis[1,8]);
			label19.Text = S.converse2(S.isorinis[1,9]);

			label21.Text = S.converse2(S.isorinis[2,1]);
			label22.Text = S.converse2(S.isorinis[2,2]);
			label23.Text = S.converse2(S.isorinis[2,3]);
			label24.Text = S.converse2(S.isorinis[2,4]);
			label25.Text = S.converse2(S.isorinis[2,5]);
			label26.Text = S.converse2(S.isorinis[2,6]);
			label27.Text = S.converse2(S.isorinis[2,7]);
			label28.Text = S.converse2(S.isorinis[2,8]);
			label29.Text = S.converse2(S.isorinis[2,9]);

			label31.Text = S.converse2(S.isorinis[3,1]);
			label32.Text = S.converse2(S.isorinis[3,2]);
			label33.Text = S.converse2(S.isorinis[3,3]);
			label34.Text = S.converse2(S.isorinis[3,4]);
			label35.Text = S.converse2(S.isorinis[3,5]);
			label36.Text = S.converse2(S.isorinis[3,6]);
			label37.Text = S.converse2(S.isorinis[3,7]);
			label38.Text = S.converse2(S.isorinis[3,8]);
			label39.Text = S.converse2(S.isorinis[3,9]);

			label41.Text = S.converse2(S.isorinis[4,1]);
			label42.Text = S.converse2(S.isorinis[4,2]);
			label43.Text = S.converse2(S.isorinis[4,3]);
			label44.Text = S.converse2(S.isorinis[4,4]);
			label45.Text = S.converse2(S.isorinis[4,5]);
			label46.Text = S.converse2(S.isorinis[4,6]);
			label47.Text = S.converse2(S.isorinis[4,7]);
			label48.Text = S.converse2(S.isorinis[4,8]);
			label49.Text = S.converse2(S.isorinis[4,9]);

			label51.Text = S.converse2(S.isorinis[5,1]);
			label52.Text = S.converse2(S.isorinis[5,2]);
			label53.Text = S.converse2(S.isorinis[5,3]);
			label54.Text = S.converse2(S.isorinis[5,4]);
			label55.Text = S.converse2(S.isorinis[5,5]);
			label56.Text = S.converse2(S.isorinis[5,6]);
			label57.Text = S.converse2(S.isorinis[5,7]);
			label58.Text = S.converse2(S.isorinis[5,8]);
			label59.Text = S.converse2(S.isorinis[5,9]);

			label61.Text = S.converse2(S.isorinis[6,1]);
			label62.Text = S.converse2(S.isorinis[6,2]);
			label63.Text = S.converse2(S.isorinis[6,3]);
			label64.Text = S.converse2(S.isorinis[6,4]);
			label65.Text = S.converse2(S.isorinis[6,5]);
			label66.Text = S.converse2(S.isorinis[6,6]);
			label67.Text = S.converse2(S.isorinis[6,7]);
			label68.Text = S.converse2(S.isorinis[6,8]);
			label69.Text = S.converse2(S.isorinis[6,9]);

			label71.Text = S.converse2(S.isorinis[7,1]);
			label72.Text = S.converse2(S.isorinis[7,2]);
			label73.Text = S.converse2(S.isorinis[7,3]);
			label74.Text = S.converse2(S.isorinis[7,4]);
			label75.Text = S.converse2(S.isorinis[7,5]);
			label76.Text = S.converse2(S.isorinis[7,6]);
			label77.Text = S.converse2(S.isorinis[7,7]);
			label78.Text = S.converse2(S.isorinis[7,8]);
			label79.Text = S.converse2(S.isorinis[7,9]);

			label81.Text = S.converse2(S.isorinis[8,1]);
			label82.Text = S.converse2(S.isorinis[8,2]);
			label83.Text = S.converse2(S.isorinis[8,3]);
			label84.Text = S.converse2(S.isorinis[8,4]);
			label85.Text = S.converse2(S.isorinis[8,5]);
			label86.Text = S.converse2(S.isorinis[8,6]);
			label87.Text = S.converse2(S.isorinis[8,7]);
			label88.Text = S.converse2(S.isorinis[8,8]);
			label89.Text = S.converse2(S.isorinis[8,9]);

			label91.Text = S.converse2(S.isorinis[9,1]);
			label92.Text = S.converse2(S.isorinis[9,2]);
			label93.Text = S.converse2(S.isorinis[9,3]);
			label94.Text = S.converse2(S.isorinis[9,4]);
			label95.Text = S.converse2(S.isorinis[9,5]);
			label96.Text = S.converse2(S.isorinis[9,6]);
			label97.Text = S.converse2(S.isorinis[9,7]);
			label98.Text = S.converse2(S.isorinis[9,8]);
			label99.Text = S.converse2(S.isorinis[9,9]);
		}

		private void button3_Click(object sender, System.EventArgs e)
		{
			if (open == true)
			{
				try
				{
					//create a new client socket
					client = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
					String ip  = textBox2.Text;
					String port = textBox3.Text;
					int  intPort = System.Convert.ToInt16 (port,10);
			
					System.Net.IPAddress	remoteIPAddress	 = System.Net.IPAddress.Parse(ip);
					System.Net.IPEndPoint	remoteEndPoint = new System.Net.IPEndPoint(remoteIPAddress, intPort);
					client.Connect(remoteEndPoint);
					string temp = label5.Text;
					label5.Text = "u" + label5.Text;
					//MessageBox.Show(label5.Text);
					byte[] byData = System.Text.Encoding.ASCII.GetBytes(label5.Text.ToString());
					client.Send (byData);
					label5.Text = temp;
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

		private void button7_Click(object sender, System.EventArgs e)
		{
			if (open == true)
			{
				try
				{
				 
					if (label20.Text == "0" && label7.Text == "Neuzimta")
					{
						label7.Text = "Patvirtinama";
						label10.Text = "0";
						byte[] byData1 = System.Text.Encoding.ASCII.GetBytes(label10.Text.ToString());
						client.Send (byData1);
					}
					if (label20.Text == "1" && label7.Text == "Patvirtinta")
					{
						label10.Text = label11.Text+label12.Text+label13.Text+label14.Text+label15.Text+label16.Text+label17.Text+label18.Text+label19.Text+label21.Text+label22.Text+label23.Text+label24.Text+label25.Text+label26.Text+label27.Text+label28.Text+label29.Text+label31.Text+label32.Text+label33.Text+label34.Text+label35.Text+label36.Text+label37.Text+label38.Text+label39.Text+label41.Text+label42.Text+label43.Text+label44.Text+label45.Text+label46.Text+label47.Text+label48.Text+label49.Text+label51.Text+label52.Text+label53.Text+label54.Text+label55.Text+label56.Text+label57.Text+label58.Text+label59.Text+label61.Text+label62.Text+label63.Text+label64.Text+label65.Text+label66.Text+label67.Text+label68.Text+label69.Text+label71.Text+label72.Text+label73.Text+label74.Text+label75.Text+label76.Text+label77.Text+label78.Text+label79.Text+label81.Text+label82.Text+label83.Text+label84.Text+label85.Text+label86.Text+label87.Text+label88.Text+label89.Text+label91.Text+label92.Text+label93.Text+label94.Text+label95.Text+label96.Text+label97.Text+label98.Text+label99.Text;
						byte[] byData = System.Text.Encoding.ASCII.GetBytes(label10.Text.ToString());
						client.Send (byData);
						label7.Text = "Siunciama";
					}
					if (label20.Text == "3" && label7.Text == "Pasiruosia")
					{
						label10.Text = "3";
						byte[] byData = System.Text.Encoding.ASCII.GetBytes(label10.Text.ToString());
						client.Send (byData);
						label7.Text = "Pasiruosta";
					}
					if (label7.Text == "Isspresta!!!")
					{
						//refreshinti
						label10.Text = "a";
						byte[] byData = System.Text.Encoding.ASCII.GetBytes(label10.Text.ToString());
						client.Send (byData);
						label20.Text = "0";
						label7.Text = "Neuzimta";
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

		private void button8_Click(object sender, System.EventArgs e)
		{
			if (open == true)
			{
				try
				{
					if (label7.Text != "Neuzimta")
					{
						byte [] buffer = new byte[82];
						int iRx = client.Receive (buffer);
						char[] chars = new char[iRx];

						System.Text.Decoder d = System.Text.Encoding.UTF8.GetDecoder();
						int charLen = d.GetChars(buffer, 0, iRx, chars, 0);
						System.String szData = new System.String(chars);
						label30.Text = szData;
						if (label30.Text == "1" && label7.Text == "Patvirtinama")
						{
							label20.Text = "1";
							label7.Text = "Patvirtinta";
						}
						if (label30.Text == "2" && label7.Text == "Siunciama")
						{
							label20.Text = "2";
							label7.Text = "Laukia";
						}
						if (label30.Text == "3" && label7.Text == "Laukia")
						{
							label20.Text = "3";
							label7.Text = "Pasiruosia";
						}
						if (label20.Text == "3" && label7.Text == "Pasiruosta")
						{
							//gaunam rezultata ir ispakuojam
							label7.Text = "Ispakuoja";
							//ispakuoja
							//label30.Text - rezultatas
							string result = szData;
							MessageBox.Show(result);
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
								s = result.Substring(i-1,1);
								S.isorinis[y,x]=System.Convert.ToInt16(s);
							}
						
							label7.Text = "Isspresta!!!";
						}
						
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
			perpaisyti();

		}

		private void button4_Click(object sender, System.EventArgs e)
		{
			if (open == true)
			{
				open = false;
				temp = label7.Text;
				label7.Text = "blokuojama";
			} 
			else 
			{
				open = true;
				label7.Text = temp;
			}
		}

		private void button6_Click(object sender, System.EventArgs e)
		{
			try {
			if (open == true)
			{
				if (label7.Text == "Neuzimta")
				{
					label10.Text = "a1";
					byte[] byData1 = System.Text.Encoding.ASCII.GetBytes(label10.Text.ToString());
					client.Send (byData1);
					client.Close();
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


	}
}
