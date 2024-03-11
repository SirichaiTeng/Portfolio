using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.page
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Request.Cookies["Auth_user"] != null && !string.IsNullOrEmpty(Request.Cookies["Auth_user"].Value))
                //{
                //    string cookie = Request.Cookies["Auth_user"].Value;
                //    Checkcookie(cookie);
                //}
                //else
                //{
                //    lblModaltitlechecktoken.Text = "เกิดข้อผิดพลาด";
                //    lblModalbodychecktoken.Text = "กรุณา login อีกครั้ง";
                //    ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccessModal", "showSuccessModal();", true);
                //}
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblModaltitlechecktoken.Text = "TEST";
            lblModalbodychecktoken.Text = "TEST";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccessModal", "showSuccessModal();", true);
        }

        private async void Checkcookie(string cookie)
        {
            string cookies = cookie.ToString();
            var tokendto = new
            {
                token = cookies
            };
            string token = JsonConvert.SerializeObject(tokendto);
            var client = new HttpClient();
            var request = new HttpRequestMessage(HttpMethod.Post, "http://localhost:5258/api/Register/checkauth");
            request.Headers.Add("x-api-key", "A3587D360526423E929E436FF791846F");
            var content = new StringContent(token, null, "application/json");
            request.Content = content;
            var response = await client.SendAsync(request);
            response.EnsureSuccessStatusCode();
            string result = await response.Content.ReadAsStringAsync();
            Console.WriteLine(result);
        }
    }
}