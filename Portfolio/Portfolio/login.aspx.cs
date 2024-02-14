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
            var user = new
            {
                username = txtUsername.ToString(),
                password = txtPassword.ToString(),
            };
            var client = new HttpClient();
            var request = new HttpRequestMessage(HttpMethod.Post, "http://localhost:5258/api/Register/login");
            request.Headers.Add("x-api-key", "A3587D360526423E929E436FF791846F");
            var content = new StringContent(user.ToString(), null, "application/json");
            request.Content = content;
            var response = await client.SendAsync(request);
            response.EnsureSuccessStatusCode();
            var token = await response.Content.ReadAsStringAsync();

        }
    }
}