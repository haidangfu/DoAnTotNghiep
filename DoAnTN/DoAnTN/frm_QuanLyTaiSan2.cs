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
    public partial class frm_QuanLyTaiSan2 : Form
    {
        public frm_QuanLyTaiSan2()
        {
            InitializeComponent();
            pb_MoRong.Visible = false;
            timer1.Start();
        }
        private void btn_TaiSan_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_TaiSan Ftaisan = new frm_TaiSan();
            Ftaisan.TopLevel = false;
            panel3.Controls.Add(Ftaisan);
            Ftaisan.Dock = DockStyle.Fill;
            Ftaisan.Show();

        }

        private void btn_DieuChuyen_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_DieuChuyen frmDC = new frm_DieuChuyen();
            frmDC.TopLevel = false;
            panel3.Controls.Add(frmDC);
            frmDC.Dock = DockStyle.Fill;
            frmDC.Show();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btn_BHBM_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_BaoHongBaoMat frmBHBM = new frm_BaoHongBaoMat();
            frmBHBM.TopLevel = false;
            panel3.Controls.Add(frmBHBM);
            frmBHBM.Dock = DockStyle.Fill;
            frmBHBM.Show();
        }

        private void btn_KiemDem_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_KiemDem frmKD = new frm_KiemDem();
            frmKD.TopLevel = false;
            panel3.Controls.Add(frmKD);
            frmKD.Dock = DockStyle.Fill;
            frmKD.Show();
        }

        private void btn_KiemKe_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_KiemKe frmKK = new frm_KiemKe();
            frmKK.TopLevel = false;
            panel3.Controls.Add(frmKK);
            frmKK.Dock = DockStyle.Fill;
            frmKK.Show();
        }

        private void btn_BaoCao_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_BaoCao frmBC = new frm_BaoCao();
            frmBC.TopLevel = false;
            panel3.Controls.Add(frmBC);
            frmBC.Dock = DockStyle.Fill;
            frmBC.Show();
        }

        private void btn_DanhMuc_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_DanhMuc frmDM = new frm_DanhMuc();
            frmDM.TopLevel = false;
            panel3.Controls.Add(frmDM);
            frmDM.Dock = DockStyle.Fill;
            frmDM.Show();
        }

        private void btn_HeThong_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_HeThong frmHT = new frm_HeThong();
            frmHT.TopLevel = false;
            panel3.Controls.Add(frmHT);
            frmHT.Dock = DockStyle.Fill;
            frmHT.Show();
        }

        private void btn_DangXuat_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pictureBox11_Click(object sender, EventArgs e)
        {
            panel2.Width = 43;
            pb_MoRong.Visible = true;
        }

        private void pictureBox12_Click(object sender, EventArgs e)
        {
            panel2.Width = 215;
            pb_MoRong.Visible = false;
        }

        private void pb_TaiSan_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_TaiSan Ftaisan = new frm_TaiSan();
            Ftaisan.TopLevel = false;
            panel3.Controls.Add(Ftaisan);
            Ftaisan.Dock = DockStyle.Fill;
            Ftaisan.Show();
        }

        private void pb_DieuChuyen_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_DieuChuyen frmDC = new frm_DieuChuyen();
            frmDC.TopLevel = false;
            panel3.Controls.Add(frmDC);
            frmDC.Dock = DockStyle.Fill;
            frmDC.Show();
        }

        private void pb_BHBM_Click(object sender, EventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            DateTime datetime = DateTime.Now;
            this.lbl_date.Text = datetime.ToString();
        }

        private void pb_DanhMuc_Click(object sender, EventArgs e)
        {
            panel3.Controls.Clear();
            frm_DanhMuc frmDM = new frm_DanhMuc();
            frmDM.TopLevel = false;
            panel3.Controls.Add(frmDM);
            frmDM.Dock = DockStyle.Fill;
            frmDM.Show();
        }
    }
}
