function initChessData(Chess,x,y)
{
    Chess.x=x
    Chess.y=y
    Chess.lastX=-1
    Chess.lastY=-1
    Chess.selected=false
    Chess.visible=true

}//初始化棋盘

function initchessboardData(chessboard)
{
    chessboard.lastY=-1
    chessboard.lastX=-1
    chessboard.sequence=0
    chessboard.selected=false
}
//实现棋子移动事件
function caculate(Chess,chessboard){


    //鼠标点击位置的左上角坐标
    var a=(Math.floor(parent.x/80)*80)
    var b=(Math.floor(parent.y/80)*80)
    var c=a+40
    //鼠标点击方格距离棋子的横坐标距离，竖坐标距离
    var dx=a+40-Chess.lastX
    var dy=b+40-Chess.lastY
    //red老鼠移动
    caculate(red_Mouse,parent)
    //blue老鼠移动
    caculate(blue_Mouse,parent)
    //cat_red移动
    caculate(red_Cat,parent)
    //cat_blue移动
    caculate(blue_Cat,parent)
    //dog_blue
    caculate(blue_Dog,parent)
    //dog_red
    caculate(red_Dog,parent)
    //wolf_blue
    caculate(blue_Wolf,parent)
    //wolf_red
    caculate(red_Wolf,parent)
    //leopard_blue
    caculate(blue_Leopard,parent)
    //leopard_red
    caculate(red_Leopard,parent)
    //tiger_blue
    caculate(blue_Tiger,parent)
    //tiger_red
    caculate(red_Tiger,parent)
    //lion_blue
    caculate(blue_Lion,parent)
    //lion_red
    caculate(red_Lion,parent)
    //elephant_red移动
    caculate(red_Elephant,parent)
    //elephant_blue移动
    caculate(blue_Elephant,parent)
    chessboard.selected=false

}




