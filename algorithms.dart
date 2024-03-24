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

List<int> quickSort(List<int> list) {
  if(list.length < 2) {
    return list;
  }
  int pivot = list[0];
  List<int> less = [];
  List<int> greater = [];
  for(int x in list) {
    if(x < pivot) { less.add(x); }
    else if(x > pivot) { greater.add(x); }
  }
  return (quickSort(less) + [pivot] + quickSort(greater));
}