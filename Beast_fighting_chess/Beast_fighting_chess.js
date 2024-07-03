//蓝方先动，判断蓝方玩家只能在chessboard.round%2=1的情况下移动，红方玩家只能在chessboard.round%2=0的情况下移动
function gamerjudge(Chess){
    if(chessboard.round%2==1&&Chess.gamer===true){
        Chess.state=false
    }
    else if(chessboard.round%2==0&&Chess.gamer===false) {
        Chess.state=false
    }
}
//实现坐标改变
function changeCoordinate(Chess,dx,dy){
    Chess.x+=dx
    Chess.y+=dy
    Chess.middleX=Chess.x+45
    Chess.middleY=Chess.y+45
    Chess.state=false
    chessboard.round+=1
}
//实现棋子移动
function move(Chess,Chessboard,mouseX,mouseY){
    var x=(Math.floor(mouseX/90)*90)
    var y=(Math.floor(mouseY/90)*90)
    var z=x+45
    var dx=x+45-Chess.middleX
    var dy=y+45-Chess.middleY
    gamerjudge(Chess)
    //特殊棋子的有特殊移动
    //老鼠
    if(Chess.level===1){
        if(Chess.state&&Chessboard.state){
            if((Math.abs(dx)==90&&Math.abs(dy)==0)||(Math.abs(dy)==90&&Math.abs(dx)==0)){
                changeCoordinate(Chess,dx,dy)
            }else{
                Chess.state=false
            }
        }else{
            Chess.state=false
        }
    }
    //虎狮能跳过小河
    else if((Chess.level===6||Chess.level===7)&&Chess.state&&Chessboard.state){
        //可以竖着跳过小河的位置
        if(((Chess.middleY===225&&(Chess.middleX===135||Chess.middleX===225||Chess.middleX===405||Chess.middleX===495))
            ||(Chess.middleY===585&&(Chess.middleX===135||Chess.middleX===225||Chess.middleX===405||Chess.middleX===495)))){
            if((Math.abs(dy)==360&&Math.abs(dx)==0)&&(jumpRiver(Chess,blue_Mouse,z)===false&&jumpRiver(Chess,red_Mouse,z)===false)){
                changeCoordinate(Chess,dx,dy)
            }
            //陆地上正常移动
            else if(((Math.abs(dx)==90&&Math.abs(dy)==0)||(Math.abs(dy)==90&&Math.abs(dx)==0))){
                changeCoordinate(Chess,dx,dy)
            }else{
                Chess.state=false
            }
        }
        //可以横着跳过小河的位置
        else{
            if((Math.abs(dx)==270&&Math.abs(dy)==0)&&(jumpRiver(Chess,blue_Mouse,x)===false&&jumpRiver(Chess,red_Mouse,x)===false)){
                changeCoordinate(Chess,dx,dy)
            }
            //陆地上正常移动
            else if(((Math.abs(dx)==90&&Math.abs(dy)==0)||(Math.abs(dy)==90&&Math.abs(dx)==0))){
                changeCoordinate(Chess,dx,dy)
            }else{
                Chess.state=false
            }

        }
    }
    //老鼠能进入小河
    else{
        if((y==270&&x==90)||(y==270&&x==180)||(x==90&&y==360)||(x==180&&y==360)||(x==90&&y==450)||(x==180&&y==450)
            ||(x==360&&y==270)||(x==450&&y==270)||(x==360&&y==360)||(x==450&&y==360)||(x==360&&y==450)||(x==450&&y==450)) {
            Chess.state=false
            Chessboard.state=false
        }
        else if(Chess.state&&Chessboard.state){
            if((Math.abs(dx)==90&&Math.abs(dy)==0)||(Math.abs(dy)==90&&Math.abs(dx)==0)){
                changeCoordinate(Chess,dx,dy)
            }else{
                Chess.state=false
            }
        }
    }
}
//定位老鼠位置
function mouseCoordinate(mouse){
    if(((mouse.middleX===135&&(mouse.middleY===315||mouse.middleY===405||mouse.middleY===495))
        ||(mouse.middleX===225&&(mouse.middleY===315||mouse.middleY===405||mouse.middleY===495))
        ||(mouse.middleX===405&&(mouse.middleY===315||mouse.middleY===405||mouse.middleY===495))
        ||(mouse.middleX===495&&(mouse.middleY===315||mouse.middleY===405||mouse.middleY===495)))){
        return true
    }
    else
        return false
}
//判断虎狮是否能跳河
function jumpRiver(Chess,mouse,x){
    if(mouseCoordinate(mouse)){
        if(Chess.middleX===mouse.middleX){
            return false
        }
        else if(Chess.middleY===mouse.middleY){
            //左边水池第一行有老鼠
            if(mouse.middleY===315&&(mouse.middleX===135||mouse.middleX===225)){
                if(Chess.middleX===45){
                    return true
                }else if(Chess.middleX===315&&x===45){
                    return true
                }else if(Chess.middleX===315&&x===585){
                    return false
                }else if(Chess.middleX===585){
                    return false
                }
            }
            //右边水池第一行有老鼠
            else if(mouse.middleY===315&&(mouse.middleX===405||mouse.middleX===495)){
                if(Chess.middleX===45){
                    return false
                }else if(Chess.middleX===315&&x===45){
                    return false
                }else if(Chess.middleX===315&&x===585){
                    return true
                }else if(Chess.middleX===585){
                    return true
                }
            }
            //左边水池第二行有老鼠
            else if(mouse.middleY===405&&(mouse.middleX===135||mouse.middleX===225)){
                if(Chess.middleX===45){
                    return true
                }else if(Chess.middleX===315&&x===45){
                    return true
                }else if(Chess.middleX===315&&x===585){
                    return false
                }else if(Chess.middleX===585){
                    return false
                }
            }
            //右边水池第二行有老鼠
            else if(mouse.middleY===405&&(mouse.middleX===405||mouse.middleX===495)){
                if(Chess.middleX===45){
                    return false
                }else if(Chess.middleX===315&&x===45){
                    return false
                }else if(Chess.middleX===315&&x===585){
                    return true
                }else if(Chess.middleX===585){
                    return true
                }
            }
            //左边水池第三行有老鼠
            else if(mouse.middleY===495&&(mouse.middleX===135||mouse.middleX===225)){
                if(Chess.middleX===45){
                      return true
                }else if(Chess.middleX===315&&x===45){
                      return true
                }else if(Chess.middleX===315&&x===585){
                      return false
                }else if(Chess.middleX===585){
                       return false
                }
            }
            //右边水池第三行有老鼠
            else if(mouse.middleY===495&&(mouse.middleX===405||mouse.middleX===585)){
                if(Chess.middleX===45){
                    return false
                }else if(Chess.middleX===315&&x===45){
                    return false
                }else if(Chess.middleX===315&&x===585){
                    return true
                }else if(Chess.middleX===585){
                    return true
                }
            }
        }
    }
    else
        return false
}
