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
    public partial class frm_DanhMuc : Form
    {
        public frm_DanhMuc()
        {
            InitializeComponent();
            tc_DanhMuc.Dock = DockStyle.Fill;
            //add dgv_PDXMuaSam vao tp_PDXMuaSam
            dgv_PDXMuaSam.Dock = DockStyle.Fill;
            tp_PDXMuaSam.Controls.Add(dgv_PDXMuaSam);
            //add dgv_PDXBaoDuong vao tp_PDXBaoDuong
            dgv_PDXBaoDuong.Dock = DockStyle.Fill;
            tp_PDXBaoDuong.Controls.Add(dgv_PDXBaoDuong);
            //add dgv_PDXThanhLy vao tp_PDXThanhLy
            dgv_PDXThanhLy.Dock = DockStyle.Fill;
            tp_PDXThanhLy.Controls.Add(dgv_PDXThanhLy);
        }
    }
}
