int? binarySearch(List<int> list, int item) {

  int low = 0;
  int high = list.length;
  int mid;
  int guess;

  while(low <= high) {
    mid = (low+high)~/2;
    guess = list[mid];
    if(guess == item) {
      return mid;
    }
    else if(guess > item){
      high = mid - 1;
    }
    else if(guess < item){
      low = mid + 1;
    }
  }
  return -1;
}