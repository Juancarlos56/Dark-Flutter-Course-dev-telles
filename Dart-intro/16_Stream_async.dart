//Streams como suscribe or observable
//asycn* --> return stream 
void main(){
  emitNumbers().listen((value){
    print('Stream value: $value');
  });
}


Stream<int> emitNumbers() async*{
  final valuesToEmit = [1,2,3,4,5];
  for (int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    //ceder valores
    yield i;
  }
}