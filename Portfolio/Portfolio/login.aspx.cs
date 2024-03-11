using Antlr.Runtime.Misc;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Value;
            string password = txtPassword.Value;
            var user = new
            {
                username = username,
                password = password,
            };
            try
            {

                string req = JsonConvert.SerializeObject(user);
                var client = new HttpClient();
                var request = new HttpRequestMessage(HttpMethod.Post, "http://localhost:5258/api/Register/login");
                request.Headers.Add("x-api-key", "A3587D360526423E929E436FF791846F");
                var content = new StringContent(req, null, "application/json");
                request.Content = content;
                var response = await client.SendAsync(request);
                response.EnsureSuccessStatusCode();
                string token = await response.Content.ReadAsStringAsync();

                HttpCookie cookie = new HttpCookie("Auth_user", token);
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);

                lblModaltitleregister.Text = "การแจ้งเตือน";
                lblModalbodyregister.Text = "เข้าสู่ระบบเรียบร้อยแล้ว";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccessModal", "showSuccessModal();", true);
                Response.Redirect("page/profile.aspx");


            }
            catch (Exception ex)
            {
                lblModaltitleregister.Text = "เกิดข้อผิดพลาด";
                lblModalbodyregister.Text = ex.Message;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccessModal", "showSuccessModal();", true);
            }

        }
    }
}