App.getUser();
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
		$("#event").html(content);
	})
}

getAllEvent();

function createPost() {
	let work_completed = $("#work_completed").val();
	let action = $("#action").val();
	let power = $("#power").val();
	let capacity = $("#capacity").val();
	let think = $("#think").val();
	let event = $("#event").val();

	console.log(event)
	let newEvent = {
		event_id: event
	}
	if ($("#create-form").valid()){
		$.ajax({
        type:"GET",
        url: "/user/getUser"
	    }).done(function (user){
			let users = user.userId;
			let newUser = {
				id: users
			}
			
			let post = {
				work_completed: work_completed,
				action: action,
			    power:  power,
				capacity: capacity,
				think: think,
				event: newEvent,
				user: newUser
			}
			$.ajax({
				headers: {
					'Accept': 'application/json',
					'Content-Type': 'application/json'
				},
				type: "POST",
				data: JSON.stringify(post),
				url: "/posts/insert-post"
			}).done((resp) =>{
				$.ajax({
	            type:"GET",
	            url: `/user/${users}`
				}).done(function(user1){
					console.log(resp)
					let newUserClassPost = {
						user_id: users,
						class_id: user1.aclass.class_id,
						post_id: resp.post_id
					}
					console.log(newUserClassPost)
					$.ajax({
	                    headers: {
	                        'Accept': 'application/json',
	                        'Content-Type': 'application/json'
	                    },
	                    type: "POST",
	                    data: JSON.stringify(newUserClassPost),
	                    url: "/user-class-post/insert"
	                })
					$("#create-form")[0].reset();
					App.showSuccessAlert("Tạo mới nhân viên thành công");
				}).fail(() =>{
					App.showErrorAlert("Đã xảy ra lỗi!");
				})
			}) 	
	    })
	}
}
	



$("#create-button").on("click", createPost);

$(".back_out_btn").on("click",function(){
	window.location.href = "/student"
})

$(() => {
    $("#create-form").validate({
        errorElement: 'div',
        rules: {
            product_name:  {
                required: true,
                minlength: 5,
                maxlength: 50,
            },
            price: {
                required: true,
                number: true
            },
            upCountry:{
                required:true
            },
            description:{
                required:true
            }
        },

        messages: {
            product_name: {
                required: "Vui lòng nhập tên sản phẩm",
                minlength: "Vui lòng nhập tối thiểu 2 ký tự!",
                maxlength: "Vui lòng nhập tối đa chỉ có 50 ký tự!"
            },
            price: {
                required: "Vui lòng nhập giá sản phẩm!",
                number: "Vui lòng chỉ nhập số"
            },
            upCountry: "Vui lòng chọn loại sản phẩm",
            description:{
                required:"Vui lòng nhập mô tả!"
            }
        },

        submitHandler : createPost
    });
});