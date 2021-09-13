     wht = document.querySelectorAll("div");
     blk = document.querySelectorAll("p");
     msc = document.getElementsByTagName("audio");


     wht.textContent="A";

whitekey= [40,42,44,45,47,49,51,52] ;
       for(let z=1 ;z<=9;z++){
         wht[z-1].onclick =function playAudio() {
           const audio = document.createElement("audio");

          audio.src ="https://www.musicca.com/lydfiler/piano/" + whitekey[z-2]+".mp3";
           audio.play()

         }}
       
blackkey=[41,43,46,48,50];
     for(let z=1 ;z<=5;z++){
       blk[z-1].onclick =function playAudio() {
         const audio = document.createElement("audio");
         audio.src ="https://www.musicca.com/lydfiler/piano/"+blackkey[z-1]+".mp3";
         audio.play();

       }}
       
       wh=[65,83,68,70,71,72,74,75] /* A,S,D,F,G,H,J */
       bk =[87,69,82,84,89] /*W,E,R,T,Y*/

       window.addEventListener('keydown', function(){
         document.onkeydown= BKcode ; 
        })


     function BKcode(event){
     var y = event.keyCode;
     for (let k=1; k<=8 ; k++){
         if(y==bk[k-1]){
             const audio = document.createElement("audio");
             audio.src ="https://www.musicca.com/lydfiler/piano/"+blackkey[k-1]+".mp3";
                 console.log(k*10);audio.play();}
         else if(y==wh[k-1]){
                 const audio = document.createElement("audio");
                 audio.src ="https://www.musicca.com/lydfiler/piano/" +whitekey[k-2]+".mp3";
                     console.log(k);audio.play();}
             }
         }

