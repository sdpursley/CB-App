# CB-App
Center of Balance Mobile Application

This app can calculate the center of balance for any vehicle with up to 8 Axles. The idea for this app is that it could be used by the Air Force Logistics Readiness Squadron to efficently calculate the center of balance of a vehicle. Currently, the main way that CB is calculated is by hand.

It should be noted that all of this information is public knowledge and in no way is it classified or secret information. Formulas and detailed information on how the calculations are made will be described below.

DTR (Defence Travel Regulation) regulations on CB.

https://www.ustranscom.mil/dtr/part-iii/dtr_part_iii_app_p.pdf


The way that center of balance is measured is as follows:
  1. Pick an edge of the vehicle to be marked as the Front Forward Edge (FFE). This edge will be used as a reference point later on.
  
  2. Measure the distance, in inches, from the FFE to the center of the first axle. This distance is known as d1.
  
  3. Measure the distance, in inches, from the FFE to the center of the next axle. Repeat until all axles are measured and recorded.
     Numbering each consecutive axle as d2, d3, d4... etc.
  
  4. Measure the weight of the first axle in pounds. This weight will be known as w1. Record this weight and measure for all other axles. 
     Numbering each consecutive axle as w2, w3, w4... etc.
  
  5. Find the moment of each axle with the following formula: m1 = d1 * w1.
  
  6. Take the total moment: total_moment = m1 + m2... etc.
  
  7. Take the gross weight: gross_weight = w1 + w2... etc.
  
  8. CB = total_moment / gross_weight
  
  
  
  Listed below are several helpful links for Swift



---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------

How to scroll in a ViewController
https://www.youtube.com/watch?v=LhhW3xqhCzg

How to use Navigation Controller
https://www.youtube.com/watch?v=ikFVfcJY6VE

Link for formating the text field and text view. Not the most helpful viedo.
https://www.youtube.com/watch?v=uVCFV668dSQ

How to make the keyboard of a textField the numpad
https://www.youtube.com/watch?v=6iVkJo0MPQg

UITextFields and how to enter input and dismiss with the return key or a tap outside the view.
https://www.youtube.com/watch?v=jY9t5rX8wHE

How to get the input from the UITextFields
https://www.youtube.com/watch?v=CUp4mSmkQnw

How to scroll in a ViewController
https://www.youtube.com/watch?v=LhhW3xqhCzg

How to create a round corner
https://www.youtube.com/watch?v=dB14lZjW7ZU

Useful documentation
https://www.ustranscom.mil/dtr/part-iii/dtr_part_iii_app_p.pdf

How to make files for specific ViewControllers
https://www.youtube.com/watch?v=AiKBxiHdFYo

Converting a String to an Int or Double
https://www.youtube.com/watch?v=NnM2WgFeKrE
