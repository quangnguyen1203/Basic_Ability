App.getUser();

$(".back_out").on("click",function(){
	window.location.href = "/login"
})

function getAllClass() {
	$.ajax({
		type: "GET",
		url: "/class/list-class"
	}).done(function(classes) {
		let content = "";
		for (let i = 0; i < classes.length; i++) {
			content += `
                    <option value="${classes[i].class_id}">${classes[i].class_name}</option>
                `;
		}
		$("#listClass").html(content);
	})
}

function getAllEvent() {
	$.ajax({
		type: "GET",
		url: "/event/list-event"
	}).done(function(events) {
		let content = "";
		for (let i = 0; i < events.length; i++) {
			content += `
                    <option value="${events[i].event_id}">${events[i].event_name}</option>
                `;
		}
		$("#listEvent").html(content);
	})
}

function getAllPost(){
	$.ajax({
        type: "GET",
        url: "/posts/list-post"
    }).done(function (posts){
        let content = "";
        for (let i = 0; i <= posts.length-1; i++) {
            content += `
                <tr id="row${posts[i].id}" class="text-center">
                  	<input class hidden id="${posts[i].id}">
					<td><a href="/posts/student-detail" style="text-decoration: none; color:#212529" onclick=student(${posts[i].id})>${posts[i].user_code}</a></td>
                    <td>${posts[i].fullName}</td>
                    <td>${posts[i].class_name}</td>
                    <td class="text-left">
						${posts[i].event_name == null ? "" : posts[i].event_name}
					</td>
					<td class="text-left">
						${posts[i].factorial_hashtag == null ? "" : posts[i].factorial_hashtag}
					</td>
                    <td class="text-center chart"><i class="fas fa-chart-area"></i></td>
                </tr>
	        `;
        }
        $("#postList tbody").html(content);

		$("#postList").DataTable({
		    "searching": false,
			"ordering": false,
		    "language": {
                "url": "//cdn.datatables.net/plug-ins/1.11.3/i18n/ja.json"
            }
		})
   })
}

function student(id){
	localStorage.setItem("studentId",id);
}
getAllClass();
getAllEvent();
getAllPost();