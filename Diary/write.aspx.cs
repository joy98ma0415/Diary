using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Diary
{
    public partial class write : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                string conn = @"Data Source=azurewebapplication.database.windows.net;Initial Catalog=webapp;User ID=joy51744;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                SqlConnection sqlCon = new SqlConnection(conn);
                sqlCon.Open();
                string strCmd = string.Format("INSERT INTO Diary(Title,Body,DateTime) VALUES (N'{0}', N'{1}', '{2}')", titleBx.Text, contentBx.Text, DateTime.UtcNow.AddHours(08).ToString("yyyy-MM-dd HH:mm"));
                SqlCommand sqlCmd = new SqlCommand(strCmd, sqlCon);
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
                Response.Write("<script>alert('發表成功！');location='Default.aspx'</script>");
            }
            catch (Exception exp)
            {
                Response.Write(exp.Message);
                Response.Write("<script>alert('發表失敗！');locaton.history</srcipt>");
            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            this.titleBx.Text = "";
            this.contentBx.Text = "";
        }
    }
}