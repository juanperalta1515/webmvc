<%@ Page Title="Adults" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Adults.aspx.cs" Inherits="webmvc._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <div>
     <div class="embed-container">       
     <iframe allowfullscreen="true" src="https://mopoga.com/embed/the-company/" frameborder="1200" width="950" height="10" scrolling="yes" onscroll="900px" ></iframe>
    
  </div>
 </div>
      <h3>Comentarios</h3>
  
 
<lu id="comment-list"></lu>
 <textarea maxlength="200" name="comment-list" id="comment" class="form-control" placeholder="COMMENT ABOUT THIS GAME..."></textarea> 
    <textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea><br><br>
 <div>
     <style>
		.comment {
			border: 1px solid black;
			padding: 10px;
			margin-bottom: 10px;
		}
	</style>

	
	<div submit="addComment(event)">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name"><br><br>
		
		<label for="username">User Name:</label>
		<input type="text" id="username" name="username"><br><br>
		<input type="submit" class="btn" id="post-comment" value="Post comment">

	<script>
        function addComment() {
            
            const nameInput = document.getElementById("name").value;
            const usernameInput = document.getElementById("username").value;
            const commentInput = document.getElementById("comment-input").value;
            var commentList = document.getElementById("comment-list");
            var name = nameInput.value;
            var comment = commentInput.value;
            var username = usernameInput;

            var commentItem = document.createElement("li");
           
            commentItem.innerHTML =
                "<strong>" + name + username + "</strong >"+
				comment
			;
            commentList.appendChild(commentItem);
            
            nameInput.value = "";
            commentInput.value = "";

            var commentForm = document.getElementById("form-control");
            commentForm.addEventListener("submit", function (event) {
                event.preventDefault(); // Prevenir el envío del formulario
                 // Añadir el comentario
                addComment();
            });
            

            
        };
        
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
    margin-top:100px;
    height: 0;
    
    overflow: hidden;
}
.embed-container iframe {
    position: absolute;
    top:0;
    left: 0;
    width: 100%;
    height: 90%;
}
#comment-list {
  list-style-type: none;
  padding: 0;
}

#comment-list li {
  margin-bottom: 10px;
  border-bottom: 1px solid #ccc;
}
  </style>

</asp:Content>
