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
    public partial class frm_TaiSan : Form
    {
        public frm_TaiSan()
        {
            InitializeComponent();
            tc_TaiSan.Dock = DockStyle.Fill;
            //gan dgv_taisan
            dgv_taisan.Dock = DockStyle.Fill;
            tp_TaiSan.Controls.Add(dgv_taisan);
            //gan dgv_taisangd
            dgv_taisanct.Dock = DockStyle.Fill;
            tp_TaiSanCT.Controls.Add(dgv_taisanct);
            //tableLayoutPanel1.Dock = DockStyle.Fill;
            //dataGridView1.Dock = DockStyle.Fill;
            //tableLayoutPanel1.Controls.Add(dataGridView1);
            //tc_TT.Dock = DockStyle.Fill;
            //tableLayoutPanel1.Controls.Add(tc_TT);
            ////gán datagirdview vào tablecontrol Thông tin chung
            //dgv_TTC.Dock = DockStyle.Fill;
            //tP_ThongTinChung.Controls.Add(dgv_TTC);
            ////gán datagirdview vào tablecontrol Quán trình sử dụng tài sản
            //dgv_QTSDTS.Dock = DockStyle.Fill;
            //tP_QTSDTS.Controls.Add(dgv_QTSDTS);
        }

        private void lbl_ChuaSD_Click(object sender, EventArgs e)
        {

        }

        private void frm_TaiSan_Load(object sender, EventArgs e)
        {

        }

        private void tsb_Them_Click(object sender, EventArgs e)
        {
            frm_TaiSan_Them frm_TS_Them = new frm_TaiSan_Them();
            frm_TS_Them.Show();
        }

        private void toolStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }
    }
}
