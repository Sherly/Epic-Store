using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Web.Services;

namespace WebApplication1
{
    /// <summary>
    /// WebService1 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World,我乃至于.net服务器";
        }


        //数据库读取数据并序列号
        [WebMethod]
        public string login(string name,string password)
        {
            string flags = "1";

            string sql = "SELECT * FROM users where (name='" + name + "')";//商品表
            MySqlConnection CN = new MySqlConnection();
            CN.ConnectionString = "server=localhost;Database=epic;uid=root;pwd=;charset=utf8";
            MySqlCommand cmd = new MySqlCommand(sql, CN);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@password", password);
            try
            {
                CN.Open();
                cmd.ExecuteNonQuery();
                CN.Close();
            }
            catch
            {
                flags = "0";
            }
            return flags;
        }

        [WebMethod]
        public string insertUser(string name, string password)
        {
            string flags = "1";
            
            string sql = "INSERT INTO users (name,password) VALUES ('" + name + "','" + password + "')";
            MySqlConnection CN = new MySqlConnection();
            CN.ConnectionString = "server=localhost;Database=epic;uid=root;pwd=;charset=utf8";
            MySqlCommand cmd = new MySqlCommand(sql, CN);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            //MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@name",name);
            cmd.Parameters.AddWithValue("@password",password);

            try
            {
                CN.Open();
                cmd.ExecuteNonQuery();
                CN.Close();
            }
            catch
            {
                flags = "0";
            }
            return flags;
        }

        [WebMethod]
        public string lunbo()
        {
            string returnStr = "";
            string sqlStr = "SELECT * FROM lunbo";//商品表
            MySqlConnection CN = new MySqlConnection();
            CN.ConnectionString = "server=localhost;Database=epic;uid=root;pwd=;charset=utf8";
            MySqlCommand CMD = new MySqlCommand(sqlStr, CN);
            MySqlDataAdapter da = new MySqlDataAdapter(CMD);//检索和保存数据。DataAdapter充当DataSet和数据源之间的桥梁
            DataSet ds = new DataSet();//定义数据源
            da.Fill(ds);//绑定数据源

            //数据序列号
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                returnStr += ds.Tables[0].Rows[i][1].ToString() + "|";//导航菜单名称
            }
            return returnStr.Substring(0, returnStr.Length - 1);
        }

        [WebMethod]
        public string Showshop ()
        {
            string returnStr = "";
            string sqlStr = "SELECT * FROM games";//商品表
            MySqlConnection CN = new MySqlConnection();
            CN.ConnectionString = "server=localhost;Database=epic;uid=root;pwd=;charset=utf8";
            MySqlCommand CMD = new MySqlCommand(sqlStr, CN);
            MySqlDataAdapter da = new MySqlDataAdapter(CMD);//检索和保存数据。DataAdapter充当DataSet和数据源之间的桥梁
            DataSet ds = new DataSet();//定义数据源
            da.Fill(ds);//绑定数据源

            //数据序列号
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                returnStr += ds.Tables[0].Rows[i][1].ToString() + "@" + ds.Tables[0].Rows[i][2].ToString() + "@" + ds.Tables[0].Rows[i][3].ToString() + "@" + ds.Tables[0].Rows[i][4].ToString() + "|";//导航菜单名称
            }
            return returnStr.Substring(0, returnStr.Length - 1);
        }

        [WebMethod]
        public string Showshop1()
        {
            string returnStr = "";
            string sqlStr = "SELECT * FROM bfd";//商品表
            MySqlConnection CN = new MySqlConnection();
            CN.ConnectionString = "server=localhost;Database=epic;uid=root;pwd=;charset=utf8";
            MySqlCommand CMD = new MySqlCommand(sqlStr, CN);
            MySqlDataAdapter da = new MySqlDataAdapter(CMD);//检索和保存数据。DataAdapter充当DataSet和数据源之间的桥梁
            DataSet ds = new DataSet();//定义数据源
            da.Fill(ds);//绑定数据源

            //数据序列号
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                returnStr += ds.Tables[0].Rows[i][1].ToString() + "@" + ds.Tables[0].Rows[i][2].ToString() + "@" + ds.Tables[0].Rows[i][3].ToString() + "@" + ds.Tables[0].Rows[i][4].ToString() + "|";//导航菜单名称
            }
            return returnStr.Substring(0, returnStr.Length - 1);
        }

        [WebMethod]
        public string Showshop2()
        {
            string returnStr = "";
            string sqlStr = "SELECT * FROM NewReleases";//商品表
            MySqlConnection CN = new MySqlConnection();
            CN.ConnectionString = "server=localhost;Database=epic;uid=root;pwd=;charset=utf8";
            MySqlCommand CMD = new MySqlCommand(sqlStr, CN);
            MySqlDataAdapter da = new MySqlDataAdapter(CMD);//检索和保存数据。DataAdapter充当DataSet和数据源之间的桥梁
            DataSet ds = new DataSet();//定义数据源
            da.Fill(ds);//绑定数据源

            //数据序列号
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                returnStr += ds.Tables[0].Rows[i][1].ToString() + "@" + ds.Tables[0].Rows[i][2].ToString() + "@" + ds.Tables[0].Rows[i][3].ToString() + "@" + ds.Tables[0].Rows[i][4].ToString() + "|";//导航菜单名称
            }
            return returnStr.Substring(0, returnStr.Length - 1);
        }

        [WebMethod]
        public string Showshop3()
        {
            string returnStr = "";
            string sqlStr = "SELECT * FROM FreeGame";//商品表
            MySqlConnection CN = new MySqlConnection();
            CN.ConnectionString = "server=localhost;Database=epic;uid=root;pwd=;charset=utf8";
            MySqlCommand CMD = new MySqlCommand(sqlStr, CN);
            MySqlDataAdapter da = new MySqlDataAdapter(CMD);//检索和保存数据。DataAdapter充当DataSet和数据源之间的桥梁
            DataSet ds = new DataSet();//定义数据源
            da.Fill(ds);//绑定数据源

            //数据序列号
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                returnStr += ds.Tables[0].Rows[i][1].ToString() + "@" + ds.Tables[0].Rows[i][2].ToString() + "@" + ds.Tables[0].Rows[i][3].ToString() + "@" + ds.Tables[0].Rows[i][4].ToString() + "|";//导航菜单名称
            }
            return returnStr.Substring(0, returnStr.Length - 1);
        }
    }
}
