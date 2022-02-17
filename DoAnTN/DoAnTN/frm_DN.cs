using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DoAnTN
{
    public partial class frm_DN : Form
    {
        public frm_DN()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            if (this.Height == 464)
            {
                frm_DN.ActiveForm.Height = 240;
            }
            else
            {
                frm_DN.ActiveForm.Height = 464;
            }
        }

        private void frm_DN_Load(object sender, EventArgs e)
        {
            this.Height = 240;
        }
    }
}
