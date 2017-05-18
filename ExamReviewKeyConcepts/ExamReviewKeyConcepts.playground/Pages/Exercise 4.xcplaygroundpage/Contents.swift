//: [Previous](@previous)
//: # Exercise 4
//: ## Your goal
//: Reproduce this image:
//:
//: ![The Pixies](ThePixies.png "The Pixies")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

//Set the background color
canvas.fillColor = Color.init(hue: 121, saturation: 55, brightness: 73, alpha: 100)

canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)


//Draw a black rectangle BEFORE the circles
canvas.drawShapesWithBorders = false

canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 400)





for x in stride(from: 0, through: 400, by: 40) {
    for y in stride(from: 0, through: 400, by: 40){
        
        //Set the color to match that of the background
        canvas.fillColor = Color.init(hue: 121, saturation: 55, brightness: 73, alpha: 100)
        
        canvas.drawEllipse(centreX: x, centreY: y, width: 35, height: 35)
        
        
        if x + y <= 400 && x != 0 && x != 400 && y != 0  {
            
            canvas.fillColor = Color.white
            canvas.drawEllipse(centreX: x, centreY: y, width: 35, height: 35)
        }
        
//        //Draw the small green circles
//        if x + y <= 400 && x != 0 && x != 400 && y != 0  {
//            
//            canvas.fillColor = Color.init(hue: 121, saturation: 55, brightness: 73, alpha: 100)
//            
//            canvas.drawEllipse(centreX: x, centreY: y, width: 20, height: 20)
//        }
//        
//        //Draw the small white circles
//        if x + y >= 400 && x != 0 && x != 400 && y != 0 && y != 400 {
//            
//            canvas.fillColor = Color.white
//            canvas.drawEllipse(centreX: x, centreY: y, width: 20, height: 20)
//        
//        }
        
        
    }
}

////Write pixies
canvas.drawText(message: "pixies", size: 75, x: 10, y: 410)

//Write the date
canvas.textColor = Color.black
canvas.drawText(message: "saturday", size: 10, x: 20, y: 550)
canvas.drawText(message: "december 13 1986", size: 10, x: 20, y: 535)
canvas.drawText(message: "9 pm over 21", size: 10, x: 20, y: 520)

//Write the location
canvas.drawText(message: "at the rat", size: 10, x: 270, y: 550)
canvas.drawText(message: "528 commonwealth", size: 10, x: 270, y: 535)
canvas.drawText(message: "boston, mass.", size: 10, x: 270, y: 520)


canvas.textColor = Color.white

//Write the special events
canvas.drawText(message: "with", size: 15, x: 270, y: 460)
canvas.drawText(message: "throwing muses", size: 15, x: 270, y: 440)
canvas.drawText(message: "big dipper", size: 15, x: 270, y: 420)

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
