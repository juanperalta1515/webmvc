<%@ Page  Title="BigTits" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BigTits.aspx.cs" Inherits="webmvc._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <div > 
     <div class="embed-container">
    <iframe allowfullscreen="yes" src="https://mopoga.com/embed/jackis-world/" frameborder="1200" width="1000" height="10" scrolling="yes" onscroll="10px" ></iframe>

</div>
 </div>
 
 <textarea maxlength="500" name="comment" id="comment2" class="form-control" placeholder="Comenta sobre este juego..."></textarea> 
    <textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea><br><br>
 <div>
     <style>
		.comment {
			border: 1px solid black;
			padding: 10px;
			margin-bottom: 10px;
		}
	</style>

	
	<div onsubmit="submitComment(event)">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name"><br><br>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email"><br><br>
		<input type="submit" class="btn" id="post-comment" value="Post comment">

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
 </div>
 <div></div>
 <div></div>
 <div></div>


    <style>
    .embed-container {
    position: relative;
    padding-bottom: 75%;
    height: 0;
    overflow: hidden;
    margin-top:100px;
}
.embed-container iframe {
    position: absolute;
    top:0;
    left: 0;
    width: 100%;
    height: 90%;
}

  </style>

</asp:Content>
