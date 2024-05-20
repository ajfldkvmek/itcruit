var wsAlarmServer = null;


function wsConnect() {
    if (window.WebSocket) {
        wsAlarmServer = new WebSocket("ws://192.168.143.6/alarm");

        wsAlarmServer.onopen = function() {
            console.log("열려라 참깨");
        };

        wsAlarmServer.onclose = function() {
            console.log("닫혀라 참깨");
        };

        wsAlarmServer.onmessage = function(data) {
        
			var alarmContainer = document.getElementById("alarm-container");
        	var notisBadge = document.getElementById("notis-badge");
			var parseData = JSON.parse(data.data);
			var bellIcon = document.querySelector(".bi-bell");
    		var arrowBox = document.querySelector(".arrow_box");
    		
    		var date = new Date(parseData.alarmTime);
			var year = date.getFullYear();
			var month = ("0" + (date.getMonth() + 1)).slice(-2);
			var day = ("0" + date.getDate()).slice(-2);
			var formatData = year + '-' + month + '-' + day;
    
    		if(parseData.alarmCtgry == "채용결과"){
    			
    			//알람 표시 CSS HTML
	 			bellIcon.classList.add("active");
    			notisBadge.innerHTML = '<span class="notif-badge animation-blink"></span>';
    			
  				arrowBox.style.display = 'block';
			    setTimeout(function() {
			        arrowBox.style.opacity = 1;
			    }, 10);
			    			
    			
	            alarmContainer.innerHTML +=
	       		'<li>'+
				'<a href="/myPage/member/recruitCheck.do?alarmNo='+ (parseData.alarmNo) +'" class="list-group-item-action border-0 border-bottom d-flex p-3">'+
						'<div>'+
						'<h6 class="mb-1">'+(parseData.alarmCn)+'</h6>'+
						'<p class="small text-body m-0">'+(parseData.alarmTtl)+'</p>'+
						'<u class="small">'+(parseData.alarmSndr)+'</u>'+
						'<div class="text-body">'+(formatData)+'</div>'+
						'</div>'+
				'</a>'+
				'</li>';
	    		
    		}
    		
    		
    		else if(parseData.alarmCtgry == "인재제안"){
    		
    		
	 			bellIcon.classList.add("active");
    			notisBadge.innerHTML = '<span class="notif-badge animation-blink"></span>';
    			
  				arrowBox.style.display = 'block';
			    setTimeout(function() {
			        arrowBox.style.opacity = 1;
			    }, 10);
 				
	            alarmContainer.innerHTML +=
           		'<li>'+
				'<a href="/myPage/member/talentCheck.do?alarmNo='+ (parseData.alarmNo) +'" class="list-group-item-action border-0 border-bottom d-flex p-3">'+
						'<div>'+
						'<h6 class="mb-1">'+(parseData.alarmCn)+'</h6>'+
						'<u class="small">'+(parseData.alarmSndr)+'</u>'+
						'<div class="text-body">'+(formatData)+'</div>'+
						'</div>'+
				'</a>'+
				'</li>';
    		
    		}
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
            
        };
        
    } else {
        alert("이상한 참깨통(지원되지 않는 브라우저)");
    }
}

window.addEventListener("beforeunload", function(event) {
    wsAlarmServer.close();
});

window.addEventListener("unload", function(event) {
    wsConnect();
});
