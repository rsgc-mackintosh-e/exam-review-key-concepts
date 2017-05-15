//: [Previous](@previous) / [Next](@next)
//: # Sequence, part 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 Attempt to reproduce this image:
 
 ![Panda](panda.png "Panda")
 */
// Create the canvas
let canvas = Canvas(width: 300, height: 300)

// Draw panda main body
canvas.fillColor = Color.white
canvas.borderColor = Color.black
canvas.defaultBorderWidth = 2
canvas.drawEllipse(centreX: canvas.width / 2, centreY: canvas.height / 2, width: 100, height: 100)

// Your code below...

//Draw shapes that have fill
canvas.drawShapesWithFill = true

//Draw white filled shapes
canvas.fillColor = Color.white

//Draw the head
canvas.drawEllipse(centreX: 150, centreY: 200, width: 75, height: 75)

//Draw black filled shapes
canvas.fillColor = Color.black


//Draw the two arms
canvas.drawEllipse(centreX: 110, centreY: 175, width: 25, height: 25)
canvas.drawEllipse(centreX: 190, centreY: 175, width: 25, height: 25)

//Draw the feet
canvas.drawEllipse(centreX: 110, centreY: 110, width: 25, height: 25)
canvas.drawEllipse(centreX: 190, centreY: 110, width: 25, height: 25)

//Draw the ears
canvas.drawEllipse(centreX: 120, centreY: 230, width: 25, height: 25)
canvas.drawEllipse(centreX: 180, centreY: 230, width: 25, height: 25)

//Dont draw shapes with fill
canvas.drawShapesWithFill = false


//Draw the outer eyes
canvas.drawEllipse(centreX: 140, centreY: 210, width: 15, height: 25)
canvas.drawEllipse(centreX: 160, centreY: 210, width: 15, height: 25)

//Draw shapes with fill
canvas.drawShapesWithFill = true


//Draw the inner eyes (black part)
canvas.drawEllipse(centreX: 140, centreY: 205, width: 10, height: 10)
canvas.drawEllipse(centreX: 160, centreY: 205, width: 10, height: 10)

//Draw the mouth (black part)
canvas.drawEllipse(centreX: 150, centreY: 180, width: 40, height: 15)

//draw shapes without borders
canvas.drawShapesWithBorders = false

//Draw white part of the smile
canvas.fillColor = Color.white

canvas.drawEllipse(centreX: 150, centreY: 185, width: 40, height: 15)


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
