//蓝方先动，判断蓝方玩家只能在chessboard.round%2=1的情况下移动，红方玩家只能在chessboard.round%2=0的情况下移动
function gamerjudge(Chess){
    if(chessboard.round%2==1&&Chess.gamer===true){
        Chess.state=false
    }
    else if(chessboard.round%2==0&&Chess.gamer===false) {
        Chess.state=false
    }
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
        if(Chess.state){
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
    else if((Chess.level===6||Chess.level===7)&&Chess.state){
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
        if((y==270&&x==90)||(y==270&&x==180)||(x==90&&y==360)||(x==180&&y==360)||(x==90&&y==405)||(x==180&&y==405)
                ||(x==360&&y==270)||(x==405&&y==270)||(x==360&&y==360)||(x==405&&y==360)||(x==360&&y==405)||(x==405&&y==405)) {
            Chess.state=false
        }
        else if(Chess.state){
            if((Math.abs(dx)==90&&Math.abs(dy)==0)||(Math.abs(dy)==90&&Math.abs(dx)==0)){
                changeCoordinate(Chess,dx,dy)
            }else{
                Chess.state=false
            }
        }
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
//实现棋子的吃与被吃
function eatChess(eated,eating,chessboard){
    gamerjudge(eating)
    var x=(Math.floor(eated.x/90)*90)+45
    var ex=(Math.floor(eated.x/90)*90)+45-eating.middleX
    var ey=(Math.floor(eated.y/90)*90)+45-eating.middleY
    //判断棋子是否为同一等级
    if(eated.level!==eating.level&&eated.state&&eating.state){
        //不为同一等级，高等级吃低等级，大象不能吃老鼠
        if(eated.level<eating.level&&(eated.level!==1||eating.level!==8)){
            //陆地上普通吃棋
            if(((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0))){
                eat(eated,eating,ex,ey)
            }
            //虎狮跳过小河吃棋
            else if((eating.level===6||eating.level===7)){
                if(((eating.middleY===225&&(eating.middleX===135||eating.middleX===225||eating.middleX===405||eating.middleX===495))
                    ||(eating.middleY===585&&(eating.middleX===135||eating.middleX===225||eating.middleX===405||eating.middleX===495)))){
                    if((Math.abs(dy)==360&&Math.abs(dx)==0)&&(chessboard.jumpRiver(eating,blue_Mouse,x)===false
                                                              &&chessboard.jumpRiver(eating,red_Mouse,x)===false)){
                        eat(eated,eating,ex,ey)
                    }
                    else if(((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0))){
                        eat(eated,eating,ex,ey)
                    }
                    else{
                        eating.state=false
                    }
                }else
                {
                    if((Math.abs(ex)==270&&Math.abs(ey)==0)&&(chessboard.jumpRiver(eating,blue_Mouse,x)===false
                                                              &&chessboard.jumpRiver(eating,red_Mouse,x)===false)){
                        eat(eated,eating,ex,ey)
                    }
                    else if(((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0))){
                        eat(eated,eating,ex,ey)
                    }
                    else{
                        eating.state=false
                    }
                }
            }
        }
        //大象可以吃陷阱中的老鼠
        else if(eated.level<eating.level&&(eated.level===1&&eating.level===8)&&((eated.middleX===225&&eated.middleY===45)
                                                                                ||(eated.middleX===315&&eated.middleY===135)||(eated.middleX===405&&eated.middleY===45))){
            if(((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0))){
                eat(eated,eating,ex,ey)
            }else{
                eated.state=false
                eating.state=false
            }
        }
        //不为同一等级，当高等级棋子在陷阱中，低等级可以吃高等级
        else if((eated.level>eating.level)){
            //只要蓝方棋子在红方陷阱，红方所有棋子都能吃掉该蓝方棋子
            if(eated.gamer===false&&((eated.middleX===225&&eated.middleY===45)||(eated.middleX===315&&eated.middleY===135)
                                     ||(eated.middleX===405&&eated.middleY===45))){
                if((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0)){
                    eat(eated,eating,ex,ey)
                }
                //只要红方棋子在蓝方陷阱，蓝方任意棋子都能吃掉该红方棋子
            }else if(eated.gamer===true&&((eated.middleX===225&&eated.middleY===765)||(eated.middleX===315&&eated.middleY===675)
                                          ||(eated.middleX===405&&eated.middleY===765))){
                if((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0)){
                    eat(eated,eating,ex,ey)
                }
                else{
                    eated.state=false
                    eating.state=false
                }
            }
            //老鼠在小河中时，老鼠不能吃大象
            else if(eating.level===1&&eated.level===8){
                if(((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0))&&!changeCoordinate(eating)){
                    eat(eated,eating,ex,ey)
                }
                else{
                    eated.state=false
                    eating.state=false
                }
            }
            else{
                eated.state=false
                eating.state=false
            }
        }
    }
    else{
        //同一等级的棋子进行互吃
        if(eating.state&&eated.state){
            if(((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0))){
                if(eating.middleX!==-1&&eating.middleY!==-1)
                    eat(eated,eating,ex,ey)
            }
            //虎狮跳过小河吃棋
            else if((eating.level===6||eating.level===7)){
                if(((eating.middleY===225&&(eating.middleX===135||eating.middleX===225||eating.middleX===405||eating.middleX===495))
                    ||(eating.middleY===585&&(eating.middleX===135||eating.middleX===225||eating.middleX===405||eating.middleX===495)))){
                    if((Math.abs(dy)==360&&Math.abs(dx)==0)&&(chessboard.jumpRiver(eating,blue_Mouse,x)===false
                                                              &&chessboard.jumpRiver(eating,red_Mouse,x)===false)){
                        eat(eated,eating,ex,ey)
                    }
                    else if(((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0))){
                        eat(eated,eating,ex,ey)
                    }
                    else{
                        eating.state=false
                    }
                }else
                {
                    if((Math.abs(ex)==270&&Math.abs(ey)==0)&&(chessboard.jumpRiver(eating,blue_Mouse,x)===false
                                                              &&chessboard.jumpRiver(eating,red_Mouse,x)===false)){
                        eat(eated,eating,ex,ey)
                    }
                    else if(((Math.abs(ex)==90&&Math.abs(ey)==0)||(Math.abs(ey)==90&&Math.abs(ex)==0))){
                        eat(eated,eating,ex,ey)
                    }
                    else{
                        eating.state=false
                    }
                }
            }
        }
    }

}
//吃棋时的位置移动
function eat(eated,eating,ex,ey){
    eated.visible=false
    eating.x+=ex
    eating.y+=ey
    eating.middleX=eating.x+45
    eating.middleY=eating.y+45
    eated.state=false
    eating.state=false
    chessboard.round+=1
}
