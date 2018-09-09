
// 点击头部信息按钮弹出框
let message = function(){
	let msg = document.querySelector(".abs-l .msg-box");
	msg.addEventListener('click',function(){
		let backg = document.querySelector(".backg");
		backg.style.display = 'block';
	})
	let close = document.querySelector(".popup .close");
	close.addEventListener('click',function(){
		let backg = document.querySelector(".backg");
		backg.style.display = 'none';
	})	
}  
message();

// 导航栏选项卡
$('.menu-list').on("click",".btn",function(){
	page = 1;
	let cid = $(this).attr("dataId");
	$(".btn.cur").removeClass("cur");
	$(this).addClass("cur");
	$(".content-list.active").empty();
    $.ajax({
        url:'/index.php?c=page&m=dataResources',
        data:{
            cid : cid,
        },
        success:function(data){
            data = JSON.parse(data);
            console.log(data);
            if(data.length){
                data.forEach(v=>{
                    if( v.cid == 2 ){
                        $(`<section class="has-action">
				<a href="" class="none-img">
					<div class="item-detail">
						<div class="img-holder-large">
							<h3 class="dotnot">
								${v.title}
							</h3>
							<img src="${v.img}" alt="">
							<div class="video-btn"></div>
						</div>
						<div class="item-info">
							<span class="lable space">置顶</span>
							<span class="src space">央视网新闻</span>
							<span class="cmt space">
								评论
								<span>52</span>
							</span>
							<span class="time space">14分钟前</span>
						</div>
					</div>
				</a>
			</section>`).appendTo('.content-list.active');
                    }else{
                        $(`<section class="has-action">
				<a href="" class="none-img">
					<div class="item-detail desc">
						<h3 class="dotnot">
							${v.title}
						</h3>
						<div class="item-info">
							<span class="lable space">置顶</span>
							<span class="src space">央视网新闻</span>
							<span class="cmt space">
								评论
								<span>${v.comment_num}</span>
							</span>
							<span class="time space">${v.ctime}</span>
						</div>
					</div>
					<div class="img-holder-small">
						<img src="${v.img}" alt="">
					</div>
				</a>
			</section>`).appendTo('.content-list.active');
                    }

                })
            }
        }
    })
})


//点击刷新按钮刷新页面并增加八条数据

var page = 1;
$(function () {
	$('.refresh-btn').click(function(){
		let cid = $('.btn.cur').attr('dataId');
		$.ajax({
			url:'/index.php?c=page&m=dataResources',
			data:{
				cid : cid,
				page: page + 1
			},
			success:function(data){
				page = page + 1;
				data = JSON.parse(data);
				if(data.length){
					if( cid ==2 ){
                        data.forEach(v=>{
                            $(`<section class="has-action">
				<a href="" class="none-img">
					<div class="item-detail">
						<div class="img-holder-large">
							<h3 class="dotnot">
								${v.title}
							</h3>
							<img src="${v.img}" alt="">
							<div class="video-btn"></div>
						</div>
						<div class="item-info">
							<span class="lable space">置顶</span>
							<span class="src space">央视网新闻</span>
							<span class="cmt space">
								评论
								<span>52</span>
							</span>
							<span class="time space">14分钟前</span>
						</div>
					</div>
				</a>
			</section>`)
                                .appendTo('.content-list.active');
                        })
					}else{
                        data.forEach(v=>{
                            $(`<section class="has-action">
				<a href="" class="none-img">
					<div class="item-detail desc">
						<h3 class="dotnot">
							${v.title}
						</h3>
						<div class="item-info">
							<span class="lable space">置顶</span>
							<span class="src space">央视网新闻</span>
							<span class="cmt space">
								评论 
								<span>${v.comment_num}</span>
							</span>
							<span class="time space">${v.ctime}</span>
						</div>
					</div>
					<div class="img-holder-small">
						<img src="${v.img}" alt="">
					</div>
				</a>
			</section>`)
                                .appendTo('.content-list.active');
                        })
					}
				}else{
					$('.content-bottom').empty();
                    $('<a class="loadmoretip">到底了!</a>').appendTo(".content-bottom")
				}
			}
		})
	})
})