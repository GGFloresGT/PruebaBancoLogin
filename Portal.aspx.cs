using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaBancoLogin
{
    public partial class Portal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text.Trim();
            string password = txtPassword.Text.Trim();

          
            if (usuario == "admin" && password == "123")
            {
                lblMensaje.CssClass = "msg";
                lblMensaje.Text = "Ingreso exitoso ✔";
            }
            else
            {
                lblMensaje.CssClass = "msg-error";
                lblMensaje.Text = "Usuario o contraseña incorrectos";
            }
        }
    }
}