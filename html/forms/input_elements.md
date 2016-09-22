- <form> defines a document section that contains interactive controls to submit information to a server for processing.

- <fieldset> is used to group several controls and labels within a form.

- <button> creates a clickable button

- <label> not really a form element, but associated indirectly through the controls with which they are associated. used to create a caption for an item in the user interface.

- <input> used to create an interactive control on the form to accept data from the user.

- <input/ type> an attribute of the "input" element. defines the type of control to display.
	-- button, a push button with no default behavior
	-- checkbox, creates a checkbox, must use the 'value' attribute to 
		to define the value submitted by this item. May also use the 'checked' attribute to indicate whether this item has been selected.
	-- text, a single line text field.
	-- email, a field for entering an email address. The input is validated to be either a valid email address or empty prior to submitting to the server
	-- password, a single-line text field whose calue is obsured. has a 'maxlength' attribute if desired.
	-- date, a control for entering a date (year, month, and day with no time)



