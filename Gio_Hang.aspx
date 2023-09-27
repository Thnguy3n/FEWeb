<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gio_Hang.aspx.cs" Inherits="FEWeb.TinhTien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="cartCss.css"/>
    <title></title>
    <script language="JavaScript">
        
        
        function Addition() {
            
        }

        window.addEventListener("load", function () {
            "use strict";

            var p = document.getElementById("donGia"),
                prixFestival = 36500000,
                thanhTien = 0;
            var d = 9125000;

            p.onclick = function () {


                var nombrePlaces = document.getElementById("soLuong").value;

                thanhTien = prixFestival * nombrePlaces;

                document.getElementById("thanhTien").innerHTML =
                    "Tổng phụ: " + thanhTien + " vnđ";

                document.getElementById("tongCong").innerHTML =
                    "Tổng cộng: " + (thanhTien - d)+ " vnđ";

                console.log("Thanh tien:", thanhTien);
                console.log("Tong cong:", thanhTien - d);
            };
            document
                .getElementById("soLuong")
                .addEventListener("keyup", function (event) {
                    event.preventDefault();
                    if (event.keyCode === 13) {
                        document.getElementById("donGia").click();
                    }
                });
        });


        
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post"> 

        <div class="container">
        <header>Giỏ hàng</header>
            <div class="left-container">
                <div class="cart-item-inner">
                    <div class="cart-item-left">
                       <img class="prod-img" src="https://shopdunk.com/images/thumbs/0008734_iphone-14-pro-128gb_240.png"/>
                        <div class="content">(FREESHIP) iPhone 14 promax 256gb </div>
                        <div class="content">36.500.000đ</div>

                        <input id="soLuong" type="number" placeholder="number of places"/>
                        <button type="button" id="donGia">Bill</button>
                    </div>
                </div>
            </div>
            <div class="right-container">
                <div class=" discount">discount: 25%</div>
                <div class="temporary-price">
                  <textarea id="thanhTien" rows="4" cols="40"></textarea>
                    
                  <textarea id="tongCong" rows="4" cols="40"></textarea>
                </div>
            </div>
        </div>




           


         
    </form>
    
</body>
</html>
