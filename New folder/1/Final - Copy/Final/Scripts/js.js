let comments = [];
loadComments();

function myFunction(name) {
  return name;             
}

document.getElementById('comment-add').onclick = function(){
    let commentName = document.getElementById('comment-name').value;
     let articleId = document.getElementById('article-id').value;
    let commentBody = document.getElementById('comment-body');

    let comment = {
         id: articleId,
         name: myFunction(commentName),
        body : commentBody.value,
        time : Math.floor(Date.now() / 1000)
    }

    commentName.value = '';
    commentBody.value = '';

    comments.push(comment);
     saveComments();
     showComments(comment.id);
}

function saveComments(){
    localStorage.setItem('comments', JSON.stringify(comments));
}

function loadComments(){
    if (localStorage.getItem('comments')) comments = JSON.parse(localStorage.getItem('comments'));
     showComments();
}

function showComments(){
    let commentField = document.getElementById('comment-field');
     let out = '';
     var articleId = document.getElementById('article-id').value;

     var filtered = $.grep(comments, function (el) {
          return el.id == articleId;
});

     filtered.forEach(function (item) {
          out += `<div id="myOwn" style="width:100%"><div class="text-right small" style="width:40%; float:right; margin-top:1%; color:#A00042;"><em>${timeConverter(item.time)}</em></div>`;
          out += `<div style="width:40%; float:left; margin-top:1%; color:#A00042" role="alert">${item.name}</div>`;
          out += `<div class="alert alert-primary" style="width:100%; float:right; color:black; font-weight: 600" role="alert">${item.body}</div></div>`;
         
    });
    commentField.innerHTML = out;
}

function timeConverter(UNIX_timestamp){
    var a = new Date(UNIX_timestamp * 1000);
    var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
    var year = a.getFullYear();
    var month = months[a.getMonth()];
    var date = a.getDate();
    var hour = a.getHours();
    var min = a.getMinutes();
    var sec = a.getSeconds();
    var time = date + ' ' + month + ' ' + year + ' ' + hour + ':' + min + ':' + sec ;
    return time;
  }