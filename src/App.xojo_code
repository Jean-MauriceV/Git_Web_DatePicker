#tag Class
Protected Class App
Inherits WebApplication
	#tag Note, Name = About
		This program opens a calendar date picker based on the desktop example 
		instead of a container control, I used a windowdialog. 
		I did this because it is more customizable and the webdatepicker coming with xojo 
		is not working good with languages like french because it depends of the configuration of the user. 
		
		It goes with a session IsDatePicked(boolean) that comes back true if the users chooses a date
		 and false if the users escape the dialog without choosing.
		
		In teh event dismissed (dialog is closing) we called the method session.setDateInTextFieldWebPage1 
		that finishes the action that was called by the button PickDateButton 
		
		if the users quits the dialog without choosing a date it puts the textfield to "" 
		and write to the label "You have NOT selected a date"
		
		If the users picks a date it writes the property session.datePicked in SQLDate in the textfield 
		and writes "You have selected a date"
		
		
		
		Improvments possible ??
		
		I couldn't use a control set for the buttons so I had to put an event pressed for each button
		 and I used an array to initialize them at the beginning.
		I sthere a way to do that in an other way ? in the pressed event of the button class if possible ? 
		suggestions are welcome.
		
		I used the session properties to communicate between the webpage and webdialog, Is there an other way ? 
		
		
		
		parameters for left and top values for the lines of buttons 
		30 82 134 186 238 290 342. Horizontal (left)
		100 152 204 256 304 356 vertical (top)
		
	#tag EndNote


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
