display.setDefault( "background", 24/255, 224/255, 57/255 )

local calculateButton1 = display.newImageRect( "Assets/enterbutton.png", 100, 100 )
calculateButton1.x = 160
calculateButton1.y = 210
calculateButton1.id = "calculate buttonl"

local calculateButton2 = display.newImageRect( "Assets/yes.png", 100, 100 )
calculateButton2.x = 100
calculateButton2.y = 425
calculateButton2.id = "calculate button2"

local calculateButton3 = display.newImageRect( "Assets/no.png", 100, 100 )
calculateButton3.x = 220
calculateButton3.y = 425
calculateButton3.id = "calculate button3"

whatAge = display.newText( "Type your age here: ", 160, 265, native.systemFont, 15 )
whatAge:setFillColor( 255/255, 255/255, 255/255 )

whatDay = display.newText( "Is it the weekend?", 160, 350, native.systemFont, 15 )
whatDay:setFillColor( 255/255, 255/255, 255/255 )

responseText = display.newText( "What should you be doing today?", 160, 75, native.systemFont, 15 )
responseText:setFillColor( 255/255, 255/255, 255/255 )

ageField = native.newTextField( display.contentCenterX, display.contentCenterY + 65, 225, 40 )
ageField.id = "Age textField"

weekday = 0

local function calculateButtonTouch1 ( event )
	
	ageAnswer = tonumber(ageField.text)

	if weekday == 1 and ageAnswer < 18 then
		responseText.text = "You need to go to school!"
	elseif weekday == 1 and ageAnswer >= 18 then
		responseText.text = "You need to go to work!"
	elseif weekday == 2 then
		responseText.text = "Relax: it's the weekend!" 
	elseif weekday == 0 or ageAnswer == nil then
		responseText.text = "Insufficient information"

end
end

local function calculateButtonTouch2 ( event )
	
	weekday = 1
	print ("Weekday")

	end

local function calculateButtonTouch3 ( event )
	
	weekday = 2
	print ("Not Weekday")

	end

calculateButton1:addEventListener( "touch", calculateButtonTouch1 )

calculateButton2:addEventListener( "touch", calculateButtonTouch2 )

calculateButton3:addEventListener( "touch", calculateButtonTouch3 )