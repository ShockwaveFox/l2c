Markdown
https://learn.microsoft.com/en-us/training/modules/communicate-using-markdown/
	• Markdown is a markup language
	• It is a mix of HTML and plain text language
	• There is a version for GitHub called GitHub Flavoured Markdown
	• Text can be shown in Italics by using one * or _
		○ _This will be in italics_
		○ *This will be in italics*
	• Text can be shown in Bold by using two ** or __
		○ __This is bold text__
		○ **This is bold text**
	• Text can be put into Bold and Italics in the same sentence -
		○ _This is italic **and bold** text_
		○ *This is italic and _bold_ text**
	• To use actual special characters use a backslash (\) to escape them
		○ \_This will show all \*\*special\*\* characters\_\_
	• Headings can be added by using has (#) symbols
		○ Headings can be from 1 to 6 using one hash for each heading
		○ # will be a H1 ###### will be a H6 heading
	• Images can be added with ![Link an Image.] (image_path.png)
	• Links can be added with [Link to "link name"](/"link URL")
	• There can be two types of lists - ordered and unordered
		○ Ordered - 
			1. First
			2. Second
			3.  Third
		○ Unordered - 
			§ First 
				□ Nested
			§ Second
			§ Third
	• Tables can be input using pipes (|) for column separation and dashes (-) to define headers
		First|Second
		-|-
		1|2
		3|4
	• Text can be quoted using the greater than (>) character
		○ >This text will be quoted
	• HTML can be used where it is not supported by Markdown
		This will create a<br />
		Line break
	• Code blocks can be added by using the backtick (`) character
		○ This will be `code`.
		○ To create a multi line code block use three backticks at the beginning and end
			```markdown
			Var first = 1;
			Var second = 2;
			Var sum = first + second;
			```
	• GFM can add syntax highlights for coding languages by stating the language name after the first backticks
		```javascript
		Var first = 1;
		Var second = 2;
		Var sum = first + second;
		```
	• GFM can use shortened formats for linking pull and issue requests - this is done using the format #ID = #1234
		○ GitHub will shorten long links automatically that are pasted in
		○ A commit can be linked to by pasting in its ID
	• Users and teams can be mentioned with the @ symbol
		○ @adamtaylor
	• Task lists can be created to track progress
		○ [ ] First task
		○ [X] Second task
		○ [ ] Third task
		○ The X symbol marks a task complete, an empty space leaves the box unchecked
	• Slash commands can be used to minimise the amount of typing needed to add in content
		○ 
		/code	Inserts a Markdown code block. You choose the language.
		/details	Inserts a collapsible detail area. You choose the title and content.
		/saved-replies	Inserts a saved reply. You choose from the saved replies for your user account. If you add %cursor% to your saved reply, the slash command places the cursor in that location.
		/table	Inserts a Markdown table. You choose the number of columns and rows.
		/tasklist	Inserts a tasklist. This slash command only works in an issue description.
		/template	Shows all of the templates in the repository. You choose the template to insert. This slash command works for issue templates and a pull request template.
