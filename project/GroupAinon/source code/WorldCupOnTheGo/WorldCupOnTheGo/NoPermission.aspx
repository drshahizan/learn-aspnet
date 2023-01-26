<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="NoPermission.aspx.cs" Inherits="WorldCupOnTheGo.NoPermission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #jail {
            position: relative;
            border: 2px solid gray;
            border-radius: 50%;
            width: 32px;
            height: 32px;
        }

        #spinner {
            display: none;
            position: absolute;
            width: 100px;
            height: 100px;
            left: 50%;
            top: 50%;
            transform-origin: 50% 50%;
            animation: 4s spin linear infinite;
        }

        body.seenMouse #spinner {
            display: block;
        }

        body.seenMouse #cursor {
            position: absolute;
            left: 12px;
            top: 8px;
            animation: 2s dragMouse ease forwards;
            width: 32px;
            height: 32px;
            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABmJLR0QAAAAAAAD5Q7t/AAABX0lEQVRYw+3UMUvDUBQF4EOv3Nk2OnjxB4gg6OQo2Nm/5c9w0snJyUWlKAhBEaRgKypiiK/FrdBCad/NdWkgFnHyNUvOEshyPk5eHoilRyy7KCm12fOwNASx9D5d34jlshQEsfTMzEpD5IDSEEVAKYh5wMIRvwFU1ZIkXQxiHqCqNp1ObTwe2+vbe3hEEVAsH41GNhgM7OmpGxSRX0TIsgxZlkFVoarw3kNVsbLSwH18vo9Al1Xtr3LvPbz3iKI6bm/O9gEc/jdgKQfk5WnqsLoawXuPtfXtqxCz/wix9PJv/vz8YsQyPD45NeecEcsFsRwEBxTLiWWXWNpJklgc3xmxtEP21wAgTR02t/ZGAJo6cTGAj4eHNhqNZQD4CLrC7BcbFk/4bIVOt9u1VuvaiOUxVP+STlxz/qVOXEwsb/3+10YU1QFgGmyBP5YRYukQyxGx7CwcUKVKlSpVqiwq37opL7UKP+WdAAAAAElFTkSuQmCC);
        }

        @keyframes spin {
            0% {
                transform: translate(-50%, -50%) rotate(360deg);
            }

            100% {
                transform: translate(-50%, -50%) rotate(0deg);
            }
        }

        @keyframes dragMouse {
            0% {
                left: calc(var(--mouseX)*1px);
                top: calc(var(--mouseY)*1px);
            }

            100% {
                left: calc(var(--mouseX)/var(--width)*10px + 12px);
                top: calc(var(--mouseY)/var(--height)*10px + 8px);
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <h1>Forbidden!</h1>
            <h2>Code 403</h2>
            <div class="mb-2">
                <asp:LinkButton ID="lbGoHome" CssClass="btn btn-primary" runat="server" OnClick="lbGoHome_Click">Return to main page</asp:LinkButton>
            </div>
            <br />
            <br />
            <br />
            <center>
                <div id="jail">
                <svg xmlns="http://www.w3.org/2000/svg"
                    xmlns:xhtml="http://www.w3.org/1999/xhtml"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    version="1.1"
                    viewBox="0 0 1000 1000"
                    preserveAspectRatio="xMinYMin"
                    id="spinner">
                    <defs>
                        <path id="textPath" d="M 250 500 A 250,250 0 1 1 250 500.0001" />
                    </defs>
                    <text x="0" y="0" text-anchor="left" style="font-size: 90pt;">
                        <textPath xlink:href="#textPath" startOffset="0%">MOUSE JAIL</textPath>
                        <textPath xlink:href="#textPath" startOffset="50%">MOUSE JAIL</textPath>
                    </text>
                </svg>
                <div id="cursor"></div>
            </div>
            </center>
            
        </div>

    </section>
    <script>
        var jail = document.getElementById('jail');

        document.addEventListener('mousemove', mouseUpdate, false);
        document.addEventListener('mouseenter', mouseUpdate, false);

        var seenMouse = false;

        function mouseUpdate(e) {
            var jailCoords = jail.getBoundingClientRect();
            var pageCoords = document.body.getBoundingClientRect();

            var x = e.pageX - jailCoords.left;
            var y = e.pageY - jailCoords.top;

            document.body.style.setProperty('--mouseX', x);
            document.body.style.setProperty('--mouseY', y);

            document.body.style.setProperty('--width', pageCoords.width);
            document.body.style.setProperty('--height', pageCoords.height);

            if (!seenMouse) {
                document.body.classList.add('seenMouse');
                seenMouse = true;
            }
        }

        function mouseLeft(e) {
            document.body.classList.remove('seenMouse');
            seenMouse = false;
        }

        document.addEventListener('mouseleave', mouseLeft, false);
    </script>

</asp:Content>

