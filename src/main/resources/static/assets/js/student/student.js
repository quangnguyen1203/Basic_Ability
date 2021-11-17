App.getUser();

$(".button_add").on("click",function(){
	window.location.href = "posts/create-post"
})

function getAllListEvent(){
	$.ajax({
        type:"GET",
        url: "/user/getUser"
    }).done(function (users){
		$.ajax({
        type: "GET",
        url: `/posts/student-detail/${users.userId}`
	    }).done(function (post){
	        let content = "";
	        for (let i = 0; i <= post.length-1; i++) {

	            content += `
	                <tr id="row${post[i].post_id}" class="text-center">
                      <input hidden id="${post[i].post_id}">
                      <td>${post[i].class_name}</td>
                      <td>${post[i].event_name}</td>
					  <td><p class='btn ${post[i].status === "未確認" ? 'btn-primary' : (post[i].status === "確認中" ? 'btn-warning' : 'btn-success')}'>
						${post[i].status}</p>
					  </td>
					  <td class="notification"><i class="fas fa-bell"></i></td>
					  <td>
                        <button value="${post[i].post_id}" class="btn btn-outline-primary mr-2 edit-button" ><i class="far fa-edit"></i></button>
                        <button value="${post[i].post_id}" class="btn btn-outline-danger delete-button" ><i class="fas fa-trash-alt"></i></button>
                      </td>
	                </tr>
		        `;
	        }
	        $("#postList tbody").html(content);
			$("#postList").DataTable({
				"ordering": false,
				"searching": false,
			  
			    "language": {
	                "url": "//cdn.datatables.net/plug-ins/1.11.3/i18n/ja.json"
	            }
			})
	        /*$(".delete-button").on("click", function (){
	            App.showHideConfirmDialog().then((result) => {
	                if (result.isConfirmed){
	                    let id = $(this).attr("value");
	                    deleteConfirm(id);
	                }
	            });
	        })
	        $(".edit-button").on("click",function (){
	            let id = $(this).attr("value");
	            editEmployee(id);
	        })
	
			$('.employee_detail').on("click", function () {
	            let id = $(this).attr('value');
	            employeeDetail(id);
	        })*/
	   })
    })
}

getAllListEvent();
