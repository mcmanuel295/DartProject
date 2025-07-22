import 'dart:io';

void main(){
  
  const int SIZE = 3;
  var board = List.generate(SIZE, (_) => List.filled(SIZE, ' '));

  stdout.writeln("Player 1, choose between x or y");
  var one = stdin.readLineSync()?.toLowerCase();
  var two;

  while(one!='x' && one!='y'){
    stdout.writeln("Player 1, choose between x or y");
    one = stdin.readLineSync()?.toLowerCase();
 }

 if (one! =='x') {
   two = 'y';
 } 
 else {
   two='x';
 }
 print("player one is $one and player 2 is $two\n");

 tictactoe(board, one, two);

}


void tictactoe(List<List<String>> board,String one,String two){
  bool isWin =false;
  int? row ;
  int? col;

  while (!isWin) {

    // PLAYER ONE'S TURN
    print("Player one, Enter row: 1-3");
    row = int.parse( stdin.readLineSync()??"");
    
    while(row==null || (row <1 || row>3)){
      print("Player correct value");
      row = int.parse(stdin.readLineSync() ??"");
    }

    print("Player one, Enter col: 1-3");
    col = int.parse( stdin.readLineSync()??"");

    while(col==null || (col <1 || col>3)){
      print("Player correct value");
      col = int.parse(stdin.readLineSync() ??"");
    }


    // IF CELL ALREADY PLAYED IN
    while(board[row!-1][col!-1]!=' '){
      print('Not empty pick another place');

      print("Player one, Enter row: 1-3");
      row = int.parse( stdin.readLineSync()??"");
    
      while(row==null || (row <1 || row>3)){
        print("Player correct value");
        row = int.parse(stdin.readLineSync() ??"");
      }

      print("Player one, Enter col: 1-3");
      col = int.parse( stdin.readLineSync()??"");

      while(col==null || (col <1 || col>3)){
        print("Player correct value");
        col = int.parse(stdin.readLineSync() ??"");
      }

    }

    board[row-1][col-1] = one;
    viewBoard(board);

    if (checkWin(board,one)){
      print("Player one is the winner!!!");
      break;
    } 

    if (checkTie(board)){
      print("The game is over!!!, no winner!!!");
      break;
    }



    // PLAYER TWO'S TURN

   print("Player two, Enter row: 1-3");
    row = int.parse( stdin.readLineSync()??"");

    while(row==null || (row <1 || row>3)){
      print("Player correct value");
      row = int.parse(stdin.readLineSync() ??"");
    }


    print("Player one, Enter col: 1-3");
     col = int.parse( stdin.readLineSync()??"");

    while(col==null || (col <1 || col>3)){
      print("Player correct value");
      col = int.parse(stdin.readLineSync() ??"");
    }

     // IF CELL ALREADY PLAYED IN
    while(board[row!-1][col!-1]!=' '){
      print('Not empty pick another place');

      print("Player one, Enter row: 1-3");
      row = int.parse( stdin.readLineSync()??"");
    
      while(row==null || (row <1 || row>3)){
        print("Player correct value");
        row = int.parse(stdin.readLineSync() ??"");
      }

      print("Player one, Enter col: 1-3");
      col = int.parse( stdin.readLineSync()??"");

      while(col==null || (col <1 || col>3)){
        print("Player correct value");
        col = int.parse(stdin.readLineSync() ??"");
      }

    }

    board[row-1][col-1] = two;
    viewBoard(board);

    if (checkWin(board,two)){
      print("Player two is the winner!!!");
      break;
    } 

    if (checkTie(board)){
      print("The game is over!!!, no winner!!!");
      break;
    }

  }

}

bool checkWin(List<List<String>> board, String value){
  // DIAGONAL CHECK
  if ( board[0][0] ==value &&  board[1][1] ==value && board[2][2]==value ) {
    return true;
  } 
  else if ( board[2][0] == value  && board[1][1] == value &&  board[0][2]== value ) {
    return true;
  } 
  
  // VERTICCAL CHECK
  else if(board[0][0] == value  && board[1][0] ==value && board[2][0]==value ){
    return true;
  }
 else if(board[0][1] == value &&  board[1][1]  == value&&  board[2][1] == value ){
    return true;
  }
  else if(board[0][2] ==value && board[1][2]  ==value && board[2][2] ==value ){
    return true;
  }

  // HORIZONTAL CHECK
  else if( board[0][0] == value  && board[0][1] == value && board[0][2] ==value ){
    return true;
  }
  else if( board[1][0] == value && board[1][1] == value && board[1][2] == value ){
    return true;
  }
  else if( board[2][0] == value && board[2][1] == value && board[2][2] ==value){
    return true;
  }
  
  return false;
}

bool checkTie(List<List<String>> board){
  for (var row in board) {
    if (row.contains(' ')){
      return false;
    } 
  }
    return true;
}


void viewBoard(List<List<String>> board){
  for (var row in board) {
    print(row);
  }

  print("\n");
}