// 通用的移动判断逻辑
function canMove(dx, dy) {
  return (Math.abs(dx) == 90 && Math.abs(dy) == 0) || (Math.abs(dy) == 90 && Math.abs(dx) == 0);
}

// 竖向跳河判断逻辑
function canJumpRiver(Chess, dx, dy, z) {
  return (Math.abs(dy) == 360 && Math.abs(dx) == 0) &&
         (jumpRiver(Chess, blue_Mouse, z) === true && jumpRiver(Chess, red_Mouse, z) === true);
}

// 横向跳河判断逻辑
function canJumpRiverHorizontal(Chess, dx, x) {
  return (Math.abs(dx) == 270 && Math.abs(dy) == 0) &&
         (jumpRiver(Chess, blue_Mouse, x) === true && jumpRiver(Chess, red_Mouse, x) === true);
}

// 判断老鼠是否在河中
function isInRiver(x, y) {
  return (y === 270 && (x === 90 || x === 180)) ||
         ((x === 90 || x === 180) && (y === 360 || y === 450)) ||
         ((x === 360 || x === 450) && (y === 270 || y === 360 || y === 450));
}

// 玩家轮次判断
function gamerjudge(Chess) {
  if (chessboard.round % 2 == 1 && Chess.gamer === true) {
    Chess.state = false;
  } else if (chessboard.round % 2 == 0 && Chess.gamer === false) {
    Chess.state = false;
  }
}

function move(Chess, Chessboard, mouseX, mouseY) {
  var x = (Math.floor(mouseX / 90) * 90);
  var y = (Math.floor(mouseY / 90) * 90);
  var z = x + 45;
  var dx = x + 45 - Chess.middleX;
  var dy = y + 45 - Chess.middleY;
  gamerjudge(Chess);

  if (Chess.level === 1) {
    // 老鼠移动逻辑
    if (Chess.state && canMove(dx, dy)) {
      changeCoordinate(Chess, dx, dy);
    } else {
      Chess.state = false;
    }
  } else if ((Chess.level === 6 || Chess.level === 7) && Chess.state) {
    // 虎狮移动逻辑
    if (Chess.middleY === 225 || Chess.middleY === 585) {
      if (canJumpRiver(Chess, dx, dy, z) || canMove(dx, dy)) {
        changeCoordinate(Chess, dx, dy);
      } else {
        Chess.state = false;
      }
    } else {
      if (canJumpRiverHorizontal(Chess, dx, x) || canMove(dx, dy)) {
        changeCoordinate(Chess, dx, dy);
      } else {
        Chess.state = false;
      }
    }
  } else {
    // 其他棋子移动逻辑
    if (isInRiver(x, y)) {
      Chess.state = false;
    } else if (Chess.state && canMove(dx, dy)) {
      changeCoordinate(Chess, dx, dy);
    } else {
      Chess.state = false;
    }
  }
}

// 实现坐标改变
function changeCoordinate(Chess, dx, dy) {
  Chess.x += dx;
  Chess.y += dy;
  Chess.middleX = Chess.x + 45;
  Chess.middleY = Chess.y + 45;
  Chess.state = false;
  chessboard.round += 1;
}

// 定位老鼠位置
function mouseCoordinate(mouse) {
  return ((mouse.middleX === 135 && (mouse.middleY === 315 || mouse.middleY === 405 || mouse.middleY === 495)) ||
    (mouse.middleX === 225 && (mouse.middleY === 315 || mouse.middleY === 405 || mouse.middleY === 495)) ||
    (mouse.middleX === 405 && (mouse.middleY === 315 || mouse.middleY === 405 || mouse.middleY === 495)) ||
    (mouse.middleX === 495 && (mouse.middleY === 315 || mouse.middleY === 405 || mouse.middleY === 495)));
}

// 判断虎狮是否能跳河
function jumpRiver(Chess, mouse, x) {
  if (mouseCoordinate(mouse)) {
    if (Chess.middleX === mouse.middleX || Chess.middleY === mouse.middleY) {
      return false;
    } else if (Chess.middleY === mouse.middleY) {
      if ((mouse.middleY === 315 && (mouse.middleX === 135 || mouse.middleX === 225)) ||
          (mouse.middleY === 405 && (mouse.middleX === 135 || mouse.middleX === 225)) ||
          (mouse.middleY === 495 && (mouse.middleX === 135 || mouse.middleX === 225))) {
        return Chess.middleX !== 585;
      } else if ((mouse.middleY === 315 && (mouse.middleX === 405 || mouse.middleX === 495)) ||
                 (mouse.middleY === 405 && (mouse.middleX === 405 || mouse.middleX === 495)) ||
                 (mouse.middleY === 495 && (mouse.middleX === 405 || mouse.middleX === 495))) {
        return Chess.middleX === 585;
      }
    }
  }
  return true;
}

// 实现棋子的吃与被吃
function eatChess(eated, eating, chessboard) {
  gamerjudge(eating);
  var x = (Math.floor(eated.x / 90) * 90) + 45;
  var ex = (Math.floor(eated.x / 90) * 90) + 45 - eating.middleX;
  var ey = (Math.floor(eated.y / 90) * 90) + 45 - eating.middleY;
  var sameLevel = eated.level === eating.level;
  var canEat = (eated.level < eating.level && (eated.level !== 1 || eating.level !== 8));

  if (!sameLevel && eated.state && eating.state) {
    if (canEat) {
      if (canMove(ex, ey) || ((eating.level === 6 || eating.level === 7) &&
          (canJumpRiver(eating, ex, ey, x) || canMove(ex, ey)))) {
        eat(eated, eating, ex, ey);
      } else {
        eating.state = false;
      }
    } else if ((eated.level < eating.level && eated.level === 1 && eating.level === 8 &&
               ((eated.middleX === 225 && eated.middleY === 45) ||
                (eated.middleX === 315 && eated.middleY === 135) ||
                (eated.middleX === 405 && eated.middleY === 45))) ||
               (eated.level > eating.level &&
               ((eated.gamer === false && ((eated.middleX === 225 && eated.middleY === 45) ||
                                          (eated.middleX === 315 && eated.middleY === 135) ||
                                          (eated.middleX === 405 && eated.middleY === 45))) ||
                (eated.gamer === true && ((eated.middleX === 225 && eated.middleY === 765) ||
                                          (eated.middleX === 315 && eated.middleY === 675) ||
                                          (eated.middleX === 405 && eated.middleY === 765)))))) {
      if (canMove(ex, ey)) {
        eat(eated, eating, ex, ey);
      } else {
        eated.state = false;
        eating.state = false;
      }
    } else if (eating.level === 1 && eated.level === 8) {
      if (canMove(ex, ey) && !mouseCoordinate(eating)) {
        eat(eated, eating, ex, ey);
      } else {
        eated.state = false;
        eating.state = false;
      }
    } else {
      eated.state = false;
      eating.state = false;
    }
  } else if (sameLevel && eating.state && eated.state) {
    if (canMove(ex, ey) || ((eating.level === 6 || eating.level === 7) &&
        (canJumpRiver(eating, ex, ey, x) || canMove(ex, ey)))) {
      eat(eated, eating, ex, ey);
    } else {
      eating.state = false;
    }
  }
}

// 吃棋时的位置移动
function eat(eated, eating, ex, ey) {
  eated.visible = false;
  eating.x += ex;
  eating.y += ey;
  eating.middleX = eating.x + 45;
  eating.middleY = eating.y + 45;
  eated.state = false;
  eating.state = false;
  chessboard.round += 1;
}
