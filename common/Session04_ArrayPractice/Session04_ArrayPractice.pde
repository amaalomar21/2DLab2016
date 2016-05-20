

// Warm-up Exercise 1: loops
// print 0-9 (first ten numbers) multiplied by 2 to the console
// result should be 0 - 18 (by 2's) in the console


//for (int i=0; i <=9; i += 1)
//{
//  println(i*2);
//}


// Warm up 2: populate a size 20 array of floats with whole multiples of PI starting at 0
// and then print it out

println(PI);

//float[] ConsecutivePIMultiplesArray;
// this will crash
//println(ConsecutivePIMultiplesArray.length);
//ConsecutivePIMultiplesArray = new float[20];

float[] ConsecutivePIMultiplesArray = new float[200];

println(ConsecutivePIMultiplesArray.length);


ConsecutivePIMultiplesArray[0] = 20;

ConsecutivePIMultiplesArray[1] = 10;

System.out.println(ConsecutivePIMultiplesArray);

println(ConsecutivePIMultiplesArray);


// we need to count from 0 to 19 (e.g. number of elements in the array)
for ( int index=0; index < ConsecutivePIMultiplesArray.length; index++)
{
  println("index=" + index);

  // each time we count,
  // multiply the count by PI 
  float currentValue = index*PI;
  println("currentValue=" + currentValue);

  //and put the value into the array at
  // that index
  ConsecutivePIMultiplesArray[index] = currentValue;
}


println(ConsecutivePIMultiplesArray);



// we want to test if one button was pushed out of a list of 5 buttons
// assume nothing was pushed until we find otherwise
boolean wasPushed = false;

// go through buttons one by one until we find one that's pushed

for (int i=0; i<NUM_BUTTONS; i++)
{
  if (digitalRead(i) == HIGH) wasPushed = true;
}