void main(List<String> args) {
  const int SIZE = 3;
  var board = List.generate(SIZE, (_) => List.filled(SIZE, ' '));

  viewBoard(board);

  var board1 =[
    ['x','y','x'],
    ['x','y','y'],
    ['x','y',' '],
  ];
  print(tie(board1));

  viewBoard(board1);

}

bool tie(List<List<String>> board){

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
}