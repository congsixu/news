$(function(){

let bnt = document.querySelector(".search-content .log");
let back = document.querySelector(".backdrop");
let nav = document.querySelector(".action");
bnt.onclick = function(){
	back.style.display = "block";
	nav.classList.add("active");
}
back.onclick = function(){
	back.style.display = "none";
	document.querySelector(".action.active").classList.remove("active");
}
let toutiao = document.querySelector(".action .nav li a.toutiao");
let shenma = document.querySelector(".action .nav li a.shenma");
let baidu = document.querySelector(".action .nav li a.baidu");
toutiao.onclick = function(){
	bnt.style.backgroundPosition = "0.1rem -0.73rem";
	back.style.display = "none";
	document.querySelector(".action.active").classList.remove("active");
}
shenma.onclick = function(){
	bnt.style.backgroundPosition = "0.1rem -1.48rem";
	back.style.display = "none";
	document.querySelector(".action.active").classList.remove("active");
}
baidu.onclick = function(){
	bnt.style.backgroundPosition = "0.1rem 0.08rem";
	back.style.display = "none";
	document.querySelector(".action.active").classList.remove("active");
}


// 搜索出现数据
    var page = 1;
    $(function () {
        $('#more').click(function () {
            $.ajax({
                url:'/index.php?c=page&m=news&page=' + ( page + 1 ),
                data : {
                    wd : $(this).attr("wd")
                },
                success:function (data) {
                    page = page + 1;

                    data = JSON.parse(data);
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
                    }else{
                        $('#more').remove();
                        $('<div id="last">到底了!</div>').appendTo(".content")
                    }
                }
            })
        })
    })













})