using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Threading;

namespace Sudoku1
{
	/// <summary>
	/// Summary description for Form0.
	/// </summary>
	public class Form0 : System.Windows.Forms.Form
	{
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.Button button4;
		private System.Windows.Forms.Label label1;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		public Form0()
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
			this.SuspendLayout();
			// 
			// button1
			// 
			this.button1.BackColor = System.Drawing.SystemColors.InactiveCaptionText;
			this.button1.Location = new System.Drawing.Point(48, 56);
			this.button1.Name = "button1";
			this.button1.TabIndex = 0;
			this.button1.Text = "Pradeti";
			// 
			// button2
			// 
			this.button2.BackColor = System.Drawing.SystemColors.InactiveCaptionText;
			this.button2.Location = new System.Drawing.Point(48, 104);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(75, 32);
			this.button2.TabIndex = 1;
			this.button2.Text = "Priverstinai pabaigti";
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// button3
			// 
			this.button3.BackColor = System.Drawing.SystemColors.InactiveCaptionText;
			this.button3.Location = new System.Drawing.Point(160, 56);
			this.button3.Name = "button3";
			this.button3.Size = new System.Drawing.Size(96, 23);
			this.button3.TabIndex = 2;
			this.button3.Text = "Naujas Klientas";
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// button4
			// 
			this.button4.BackColor = System.Drawing.SystemColors.InactiveCaptionText;
			this.button4.Location = new System.Drawing.Point(160, 104);
			this.button4.Name = "button4";
			this.button4.Size = new System.Drawing.Size(96, 23);
			this.button4.TabIndex = 3;
			this.button4.Text = "Naujas Serveris";
			// 
			// label1
			// 
			this.label1.BackColor = System.Drawing.SystemColors.Info;
			this.label1.Location = new System.Drawing.Point(112, 8);
			this.label1.Name = "label1";
			this.label1.TabIndex = 4;
			this.label1.Text = "Kontrolinis langas";
			// 
			// Form0
			// 
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackColor = System.Drawing.SystemColors.Desktop;
			this.ClientSize = new System.Drawing.Size(292, 150);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button4);
			this.Controls.Add(this.button3);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.button1);
			this.Name = "Form0";
			this.Text = "Form0";
			this.ResumeLayout(false);

		}
		#endregion

		static void Main() 
		{
			
			Application.Run(new Form0());
			
		}

		private void button2_Click(object sender, System.EventArgs e)
		{
			Application.Exit();
		}

		private void button3_Click(object sender, System.EventArgs e)
		{
			Application.Run(new Form1());
		}
	}
}
