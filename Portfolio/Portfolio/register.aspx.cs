using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Portfolio
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }


        protected async void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtusername.Value.ToString();
            string password = txtpassword.Value.ToString();
            string confirmPassword = txtconfirmPassword.Value.ToString();

            var user = new
            {
                username = username,
                password = password,
            };
            try
            {
                string jsonUser = JsonConvert.SerializeObject(user);
                var client = new HttpClient();
                var request = new HttpRequestMessage(HttpMethod.Post, "http://localhost:5258/api/Register/Registe");
                request.Headers.Add("x-api-key", "A3587D360526423E929E436FF791846F");
                var content = new StringContent(jsonUser, null, "application/json");
                request.Content = content;
                var response = await client.SendAsync(request);
                response.EnsureSuccessStatusCode();
                Console.WriteLine(await response.Content.ReadAsStringAsync());
                string responseMessage = await response.Content.ReadAsStringAsync();
                lblModaltitleregister.Text = "การแจ้งเตือน";
                lblModalbodyregister.Text = "บันทึกเรียบร้อยแล้ว";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccessModal", "showSuccessModal();", true);
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
