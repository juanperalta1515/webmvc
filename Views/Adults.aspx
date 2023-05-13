<%@ Page Title="Adults" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Adults.aspx.cs" Inherits="webmvc._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <div>
     <div class="embed-container">
        
    <iframe src="https://fgn.cdn.serverable.com/common/flashes/nf/therapist/index.html" frameborder="50" ></iframe>
</div> <a href="https://fgn.cdn.serverable.com/flashes/nf/therapist/index.html" title="Al blog de recursos de campusMVP">Ir al blog de campusMVP</a>
     <p><a<link rel="image_src" href="https://fgn.cdn.serverable.com/common/flashes/cc/p/pokesluts.jpg" /></a></p>
      <p><a <link rel="alternate" href="https://fgn.cdn.serverable.com/common/flashes/nf/therapist/index.html"/> class="btn btn-primary btn-lg">Therapist &raquo;</a></p>
 </div>
 <div><a>Description</a></div>
 
 <div>
     <style>
		.comment {
			border: 1px solid black;
			padding: 10px;
			margin-bottom: 10px;
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
    height: 0;
    overflow: hidden;
}
.embed-container iframe {
    position: center;
    top:0;
    left: 0;
    width: 90%;
    height: 90%;
}
  </style>

</asp:Content>
