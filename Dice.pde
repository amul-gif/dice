int value;  //global variable, so roll can be used throughout the program

void setup()
  {
    size(700,500); //canvas setup
      noLoop();
  }
  void draw()
  {
      background(0); //black background
      
      int totalDots = 0; // variable to hold sum of dots
      int oneDot = 0;  // all variables to count how many of ones show up on the canvas, or twos, or threes, etc. 
      int twoDots = 0;
      int threeDots = 0;
      int fourDots = 0;
      int fiveDots = 0;
      int sixDots = 0;
      
      for(int x = 25; x < 500; x+=100) //loop controlling columns
      {
        for(int y = 25; y < 500; y+=100) //loop controlling rows
        { 
       Die dice = new Die(x,y); //one instance of class
      dice.roll(); //calls upon a new "roll" of the roll variable to generate a new dot number
      dice.show(); //calls upon the show function that holds all the die shape and dots
      totalDots += value; //adds the value of roll that is called to the totalDots variable to store the sum of all the dots on the canvas per click
     if(value == 1) //if roll is equal to 1 then oneDot is increased by one, this counts how many ones show up on the canvas, and the else if statements counts the twos, threes, fours, etc. 
     {
       oneDot ++;
     }
     else if(value == 2)
     {
       twoDots ++;
     }
     else if(value == 3)
     {
       threeDots ++;
     }
     else if(value == 4)
     {
       fourDots ++;
     }
     else if(value == 5)
     {
       fiveDots ++;
     }
     else if(value == 6)
     {
       sixDots ++;
     }
     
      
        }

      }
      fill(255);
    textSize(32);
    text("Total Dots: " + totalDots, 490, 50); // Display Total Dots on right side of canvas
    textSize(20);
    text("Number of Ones: " + oneDot, 490, 100); // Display amount of Ones
    text("Number of Twos: " + twoDots, 490, 150); // Display amount of Twos 
    text("Number of Threes: " + threeDots, 490, 200); // Display amount of Threes
    text("Number of Fours: " + fourDots, 490, 250); // Display amount of Fours
    text("Number of Fives: " + fiveDots, 490, 300); // Display amount of Fives
    text("Number of Sixes: " + sixDots, 490, 350); // Display amount of Sixes
    
    text("Click Here ", 500, 450); //Prompt the user
    
  
      
  }
  void mousePressed()
  {
      redraw(); //When the mouse is clicked everything is redrawn and changes
  }
  class Die //models one single dice cube
  {
      int xVal;
      int yVal;
   

      
      Die(int x, int y) //constructor
      {
         xVal = x;
         yVal = y;
        

       
      }
      void roll()
      {
       value = (int)((Math.random()*6)+1); //generates a random value from 1 - 6, like a die roll
        
        
         
      }
      
      void show() //method 
      {
        
          int redColor = (int) (Math.random()*255); // varible for random red value in fill statement
          fill(redColor, 104, 227);
          rect(xVal,yVal,50,50,5); //die rectangle
          fill(255);
          
          if(value==1) //if roll equals 1 then draw one dot on the dice, else if roll equals 2 draw two dots, etc. 
          {
            ellipse(xVal+25,yVal+25,10,10); // ONE
          }
          else if(value ==2)
          {
            ellipse(xVal+15,yVal+15,10,10);  // TWO
         ellipse(xVal+35,yVal+35,10,10);
          }
          else if(value ==3)
          {
            ellipse(xVal+10,yVal+10,10,10);  // THREE
          ellipse(xVal+25,yVal+25,10,10);
          ellipse(xVal+40, yVal +40,10,10);
          }
          else if(value ==4)
          {
            ellipse(xVal+10,yVal+10,10,10);  //FOUR
          ellipse(xVal+10, yVal+40,10,10);
          ellipse(xVal+40,yVal+10,10,10);
          ellipse(xVal+40,yVal+40,10,10);
          }
          else if(value ==5)
          {
            ellipse(xVal+10,yVal+10,10,10);  //FIVE
          ellipse(xVal+10, yVal+40,10,10);
          ellipse(xVal+25,yVal+25,10,10);
          ellipse(xVal+40,yVal+10,10,10);
          ellipse(xVal+40,yVal+40,10,10);
          }
          else if(value ==6)
          {
            ellipse(xVal+10,yVal+10,10,10);  //SIX
          ellipse(xVal+10, yVal+40,10,10);
          ellipse(xVal+10,yVal+25,10,10);
          ellipse(xVal+40,yVal+10,10,10);
          ellipse(xVal+40,yVal+40,10,10);
          ellipse(xVal+40,yVal+25,10,10);
          }
          
          
               
          
      
}

 
              
 
      }
