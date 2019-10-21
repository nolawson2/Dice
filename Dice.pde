    Die die1;  
        void setup()
       
  {
      noLoop();
     
       size(500,600);
  }
  void draw()
  {
     int x = 10;
     int y = 10;
     int sum = 0;
     fill(255);
     rect(0,0,500,600);
     
     for (int i = 0; i < 8; i++){

      for( int u = 0; u < 8; u++){
        die1 = new Die(x,y);
        die1.roll();
        sum = sum + die1.roll();
      die1.show();
        y = y + 60;
         
      }
           y = 10;
            x = x + 60;
            
            
     }
     
     text("sum = " + sum,200,550);
      
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX,myY;
      int num;
      int sideLength = 50;
      
      Die(int x, int y) //constructor
      {
       myX=x;
       myY=y;
       num = 1;
       roll();
      }
      public int roll()
      {
       num =  (int) (Math.random() * 6)+ 1;
       
       return num;
       
      }
      void show()
      {
       fill(255);
       rect(myX,myY,sideLength,sideLength);
       fill(0);
       
       for (int i = 1; i <= num; i++){
         textSize(10);
       text(num,myX - (7*i) + sideLength  ,myY+ sideLength/2);
       
       }
      }
  }