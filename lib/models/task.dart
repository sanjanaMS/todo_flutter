class Task{
 final String task;
 final Function changecheck;
  bool isdone;
  Task({this.isdone=false,this.task,this.changecheck});

  void getdone(){
    isdone=!isdone;
  }

}