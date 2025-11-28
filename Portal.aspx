<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portal.aspx.cs" Inherits="PruebaBancoLogin.Portal" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Portal Intranet Multimarca</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Segoe UI, sans-serif;
            background: #f0f0f0;
        }

   
        .banner-container {
            width: 100%;
            height: 40vh;
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .slide {
            width: 100%;
            height: 100%;
            position: absolute;
            background-size: cover;
            background-position: center;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }

        .slide.active {
            opacity: 1;
        }

        .banner-title {
            position: absolute;
            bottom: 20px;
            left: 20px;
            font-size: 22px;
            font-weight: bold;
            color: white;
            z-index: 5;
            background: rgba(0,0,0,0.4);
            padding: 10px 18px;
            border-radius: 6px;
        }

      
        .login-section {
            display: flex;
            justify-content: center;
            position: relative;
            z-index: 5; 
            margin-top: -120px; 
            }

        .login-card {
            background: white;
            width: 380px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 6px 20px rgba(0,0,0,0.15);
        }

        .title {
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 25px;
            color: #003d7a;
        }

        .campo {
            margin-bottom: 18px;
        }

        .campo label {
            font-weight: 600;
        }

        .campo input {
            width: 100%;
            padding: 10px;
            border: 1px solid #bbbbbb;
            border-radius: 5px;
            font-size: 15px;
        }

        .btn {
            width: 100%;
            background-color: #0078d4;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #005a9e;
        }

        .mensaje {
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
        }

        .ok { color: green; }
        .error { color: red; }
    </style>


    <script>
        let slideIndex = 0;

        function showSlides() {
            const slides = document.getElementsByClassName("slide");

            for (let i = 0; i < slides.length; i++) {
                slides[i].classList.remove("active");
            }

            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1; }

            slides[slideIndex - 1].classList.add("active");

            setTimeout(showSlides, 3500); // Cambia cada 3.5 segundos
        }

        window.onload = showSlides;
    </script>
</head>

<body>
    <form id="form1" runat="server">

        <!-- SLIDER -->
        <div class="banner-container">

            <div class="slide active" style="background-image: url('Imagenes/logo.png');">
                <div class="banner-title">Tecnología / DJI - Epson - Canon</div>
            </div>

            <div class="slide" style="background-image: url('Imagenes/Yamaha.png');">
                <div class="banner-title">Motocicletas / Yamaha</div>
            </div>

            <div class="slide" style="background-image: url('Imagenes/DFSK.png');">
                <div class="banner-title">Vehículos / Isuzu - DFSK</div>
            </div>

        </div>

        <!-- Login card -->
        <div class="login-section">
            <div class="login-card">

                <div class="title">Portal Intranet Multimarca</div>

                <div class="campo">
                    <label>Usuario</label>
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                </div>

                <div class="campo">
                    <label>Contraseña</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>

                <asp:Button ID="btnIngresar" runat="server"
                    Text="Ingresar"
                    CssClass="btn"
                    OnClick="btnIngresar_Click" />

                <asp:Label ID="lblMensaje" runat="server" CssClass="mensaje"></asp:Label>

            </div>
        </div>

    </form>
</body>
</html>


