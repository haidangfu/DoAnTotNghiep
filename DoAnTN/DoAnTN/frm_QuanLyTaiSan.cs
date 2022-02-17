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
    public partial class frm_QuanLyTaiSan : Form
    {
        public frm_QuanLyTaiSan()
        {
            InitializeComponent();
        }

        private void btn_TaiSan_Click(object sender, EventArgs e)
        {
            frm_TaiSan frm = new frm_TaiSan();
            frm.Show();
        }

        private void btn_DieuChuyen_Click(object sender, EventArgs e)
        {
            frm_DieuChuyen frm = new frm_DieuChuyen();
            frm.Show();
        }
    }
}
