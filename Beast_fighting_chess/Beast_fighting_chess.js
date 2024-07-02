//蓝方先动，判断蓝方玩家只能在chessboard.round%2=1的情况下移动，红方玩家只能在chessboard.round%2=0的情况下移动
function gamerjudge(Chess){
    if(chessboard.round%2==1&&Chess.gamer===true){
        Chess.state=false
    }
    else if(chessboard.round%2==0&&Chess.gamer===false)
    {
        Chess.state=false
    }
}
//实现坐标改变
function coordinate(Chess,dx,dy){
    Chess.x+=dx
    Chess.y+=dy
    Chess.middleX=Chess.x+45
    Chess.middleY=Chess.y+45
    Chess.state=false
    chessboard.round+=1
}
//实现棋子移动
function move(Chess,Chessboard,mouseX,mouseY){
    var a=(Math.floor(mouseX/90)*90)
    var b=(Math.floor(mouseY/90)*90)
    var c=a+45
    var dx=a+45-Chess.middleX
    var dy=b+45-Chess.middleY
    gamerjudge(Chess)
    //棋子在地图移动
    if(Chess.state&&Chessboard.state){
        if((Math.abs(dx)==90&&Math.abs(dy)==0)||(Math.abs(dy)==90&&Math.abs(dx)==0)){
            coordinate(Chess,dx,dy)
        }
        else{
            Chess.state=false
        }
    }
}


