<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="pia.css">
<title>Piano</title>
<link rel="shortcut icon" href="#" />
</head>

<body style="background-image: url(MB.jpeg)">

	<ul>
		<li><div>
				<h2>1(A)</h2>
			</div>
			<p></p></li>
		<li><div>
				<h2>2(S)</h2>
			</div>
			<p></p></li>
		<li>
			<div>
				<h2>3(D)</h2>
			</div>
		</li>
		<li><div>
				<h2>4(F)</h2>
			</div>
			<p></p></li>
		<li><div>
				<h2>5(G)</h2>
			</div>
			<p></p></li>
		<li><div>
				<h2>6(H)</h2>
			</div>
			<p></p></li>
		<li><div>
				<h2>7(J)</h2>
			</div></li>
		<li><div>
				<h2>8(K)</h2>
			</div></li>
			
	</ul>
<div id="signdiv"><button id="sign"  onclick="location.href='MusicHome.jsp'" style="width:80px;height:20px;">歌曲推薦</button>
<br><button  onclick="location.href='logout.html'" style="width:80px;height:20px;">離開遊戲</button>
</div>
	<div class="outer" width="600px" height="200px">

		<table>
			<tr><h1>歡迎來到鋼琴間</h1>
				<td><img id="img1" width="550" height="350"
					οnclick="changeImg()" src="http://localhost:8080/Piano/1.jpg" />
			</tr>
			</td>
		</table>
<button id='prev'>上一首</button>
		<button id='next'>下一首</button>
		
	</div>



	<script>
		window.onload = function() {
			var img = document.getElementsByTagName("img")[0];

			var imgArr = [ "http://localhost:8080/Piano/1.jpg",
					"http://localhost:8080/Piano/2.jpg",
					"http://localhost:8080/Piano/3.jpg" ];

			var index = 0;
			document.getElementById("prev").onclick = function() {
				index--;
				if (index < 0) {
					index = imgArr.length - 1;//迴圈(第一張-》最後一張)
				}
				img.src = imgArr[index];
			};

			document.getElementById("next").onclick = function() {
				index++;
				if (index > imgArr.length - 1) {
					index = 0;//迴圈(最後一張-》第一張)
				}
				img.src = imgArr[index];
			}
		};

		wht = document.querySelectorAll("div");
		blk = document.querySelectorAll("p");
		msc = document.getElementsByTagName("audio");

		whitekey = [ 40, 42, 44, 45, 47, 49, 51, 52 ];
		blackkey = [ 41, 43, 46, 48, 50 ];
		wh = [ 65, 83, 68, 70, 71, 72, 74, 75 ] /* A,S,D,F,G,H,J */
		bk = [ 87, 69, 82, 84, 89 ] /*W,E,R,T,Y*/

		window.addEventListener('keydown', function() {
			document.onkeydown = BKcode;
		})

		for (let t = 1; t <= 5; t++) {
			blk[t - 1].onclick = function playAudioB() {
				
				const audio = document.createElement("audio");
				audio.src = "https://www.musicca.com/lydfiler/piano/"
						+ blackkey[t - 1] + ".mp3";
				audio.play();

			};
		}
		for (let z = 1; z <= 9; z++) {
			wht[z - 1].onclick = function playAudio() {
				
				const audio = document.createElement("audio");
				audio.src = "https://www.musicca.com/lydfiler/piano/"
						+ whitekey[z - 1] + ".mp3";
				audio.play();

			};
		}

		function BKcode(event) {
			var y = event.keyCode;
			for (let k = 0; k <= 9; k++) {
				if (y == bk[k]) {
					
					const audio = document.createElement("audio");
					audio.src = "https://www.musicca.com/lydfiler/piano/"
							+ blackkey[k] + ".mp3";
					audio.play();
				} else if (y == wh[k]) {
					
					const audio = document.createElement("audio");
					audio.src = "https://www.musicca.com/lydfiler/piano/"
							+ whitekey[k] + ".mp3";
					audio.play();
				}
			}
		}
	</script>
</body>
</html>