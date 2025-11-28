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


            if (string.IsNullOrWhiteSpace(usuario) && string.IsNullOrWhiteSpace(password))
            {
                lblMensaje.CssClass = "mensaje error";
                lblMensaje.Text = "Debe ingresar usuario y contraseña";
                return;
            }

            if (!string.IsNullOrWhiteSpace(usuario) && string.IsNullOrWhiteSpace(password))
            {
                lblMensaje.CssClass = "mensaje error";
                lblMensaje.Text = "Debe ingresar contraseña";
                return;
            }

            if (string.IsNullOrWhiteSpace(usuario) && !string.IsNullOrWhiteSpace(password))
            {
                lblMensaje.CssClass = "mensaje error";
                lblMensaje.Text = "Debe ingresar usuario";
                return;
            }
            if (usuario == "admin" && password == "123")
            {
                lblMensaje.CssClass = "mensaje ok";
                lblMensaje.Text = "Ingreso exitoso";
            }
            else
            {
                lblMensaje.CssClass = "mensaje error";
                lblMensaje.Text = "Usuario o contraseña incorrectos";
                return;
            }
        }
    }
}