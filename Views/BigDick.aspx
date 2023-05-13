<%@ Page Title="BigDick" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="BigDick.aspx.cs" Inherits="webmvc.Views.BigDick" %>





<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <div>
     <div class="embed-container">
    <iframe allowfullscreen="false" src="https://www.gamcore.com/games/inner_bimbo/fgn.cdn.serverable.com/common/flashes/nf/inner_bimbo/index.html" frameborder="1200" width="1050" height="450" scrolling="yes" onscroll="80px" ></iframe>
</div>
 </div>
 <div><a>Description</a></div>
 
 <div>
     <style>
		.comment {
			border: 1px solid black;
			padding: 0px;
			margin-bottom: 50px;
		}
	</style>

      Observaciones:<br />
                <asp:TextBox ID="txtObservaciones" TextMode="MultiLine" runat="server" Style="width: 100%" Rows="5"></asp:TextBox>
            
	<h1>Comments</h1>
	<div onsubmit="submitComment(event)">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name"><br><br>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email"><br><br>
		
		<label for="comment">Comment:</label><br>
		<textarea id="comment" name="comment" rows="4" cols="50"></textarea><br><br>
		
		<input type="submit" value="Submit">
	</div>
	<div id="comments"></div>
	<script>
        function submitComment(event) {
            event.preventDefault();
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const comment = document.getElementById("comment").value;
            const commentSection = document.getElementById("comments");

            const commentDiv = document.createElement("div");
            commentDiv.classList.add("comment");
            commentDiv.innerHTML = `
				<p><strong>${name} (${email})</strong></p>
				<p>${comment}</p>
			`;
            commentSection.appendChild(commentDiv);
        }
    </script>

 </div>
 <div></div>
 <div></div>
 <div></div>


    <style>
    .embed-container {
    position: relative;
    padding-bottom: 75%;
    height: 5px;
    
    min-width:fit-content;
    overflow: hidden;
}
.embed-container iframe {
    position: absolute;
    top:0;
    left: 0;
    width: 100%;
    height: 80%;
    margin-bottom:0px;
    scroll-margin-top:50px;
    margin-top:0px;
}
  </style>

</asp:Content>
