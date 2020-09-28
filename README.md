# Minecrafting React Simulator- Project Specifications #

## **Overview** ##
This assignment is about using AJAX to fetch data in text and JSON format and processing it using DOM manipulation. You will only be writing JavaScript in this assignment. All HTML and CSS are already provided for you!

![Minecrafting Homepage](./img/home.png)


In addition to this README.md, you will be able to find the video demonstration of the expected behavior on the course [homework page](). 

### **Background Information** ###

In this assignment, you will implement a Minecraft Crafting Simulator (Note: you do not need to know anything about Minecraft to complete this assignment). This simulator has two views: a crafting simulator view and a recipe book view.  You will implement features to: view all blocks, get specific information about a selected block, view all the crafting recipes or the crafting recipes containing the selected block. You will also implement features to clear the crafting table, and try out recipes in your own crafting table.

### **Learning Objectives** ##
- Continue to practice all of the CSE 154 learning objectives from previous assignments, including:
  - Carefully reading and following assignment specifications, and more broadly, webpage specifications given visual and text-based artifacts as a design basis.
  - Reducing redundancy in your JS code while producing expected output.
  - Listening and responding to user events using JS event handlers on DOM objects.
  - Modifying your web page using JS and DOM objects.
  - Producing readable and maintainable code with unobtrusive modular JS.
  -Clearly documenting your code using JSDoc conventions as specified in the CSE 154 Code Quality Guide.
- Fetch plain text and JSON data from two web services using the JavaScript fetch API.
- Implement toggling between view states using JavaScript and provided CSS helper classes.

### **Starter Files and Final Deliverables** ###
In this HW3 repository you will find the following start files: 

| File/folders  | Repository files to stay unchanged |
| ------------- | -----------------------------------|
| `minecrafting.html`| The HTML page for displaying the Minecrafting Simulator and the recipe book | 
|`minecrafting.css` | The stylesheet for minecrafting.html |

Your repository should be submitted with these (**unchanged**) starter files as well as the following files you are to implement:

| File/folders  | Repository files to stay unchanged |
| ------------- | -----------------------------------|
| `minecrafting.js`|JS file for managing the game UI and behavior |

Your solution will be graded only on minecrafting.js - any changes you make to minecrafting.html, or mincrafting.css will not be eligible for full credit. 


### **Image Paths** ###
Your JS will retrieve image names for different images on the page, to display the different type of blocks and items that you will be interacting with. The images are stored by their short name and are of type **.png** To access them, you should use an absolute path by prepending the image name to the url: https://courses.cs.washington.edu/courses/cse154/webservices/minecrafting/images/

For example the image associated with the redstone dust can be found at:
https://courses.cs.washington.edu/courses/cse154/webservices/minecrafting/images/redstone-dust

### **API Data** ###
You will use JavaScript and AJAX requests to update minecrating.html as needed. Your program will read data from the following web services we have provided for the assignment:

 - https://courses.cs.washington.edu/courses/cse154/webservices/minecrafting/block-info.php
 - https://courses.cs.washington.edu/courses/cse154/webservices/minecrafting/recipes.php
-  https://courses.cs.washington.edu/courses/cse154/webservices/minecrafting/crafting.php

We have provided **[documentation](https://courses.cs.washington.edu/courses/cse154/webservices/minecrafting/docs/)** for each
of these APIs. You will need to read through this documentation in order to use the APIs properly for this assignment. You may assume that the data returned from both of these web services follows the formats given.

## **External Requirements** ##
Your webpage should match the overall appearance/behavior of the provided screenshots and
it **must** match the appearance/behavior specified in this document.

### **Part 1: Load All Blocks** ###
The provided HTML and CSS files display the crafting simulator view by default when the page is loaded. Below is an example of this template:

![crafting simulator view with no js](./img/noBrix.png)

For the first part of this assignment, you will populate the right container (#all-blocks)
with all 120 Minecraft brick icons by making an AJAX GET request to block-info.php?name=all.
You should also initialize your current "crafted" bricks in your JS file with the 27 default non-craftable blocks: Acacia Log, Birch Log, Jungle Log, Spruce Log, Oak Log, Wool, Coal, Cobblestone, Diamond, Flint, Redstone Dust, Sugarcane, Leather, Milk Bucket, Egg, Wheat, Cocoa Beans, Apple, Obsidian, Gold Nugget, Blaze Powder, Gunpowder, Iron Block, Brick, "smooth-stone", Honeycomb. Throughout the game, you will have the chance to craft blocks and items to add to your collection. Below is an image of the expected output (just
displaying the #all-blocks) when the block library has been populated:

![all blocks cloose up](./img/allBrix.png)

All 120 blocks added to the #all-bricks should have a class of .menu-block and have their src attribute set to the absolute image path based on the shortname returned in the plain text response (see Query 1 details in API documentation). You may find it helpful to save the shortname as a module-global variable. As mentioned in the Image Paths section of this spec, you will need to prepend the absolute path
https://courses.cs.washington.edu/courses/cse154/webservices/pokedex/sprites/ to the src to correctly link the corresponding sprite image and append ".png" as the file extension with the shortname. By default, all images with the .menu-block class will show up as black shadows until they have the additional .crafted class added (implemented in the provided CSS), which will add color to the respective sprite image Remember to give all img created in JS a descriptive alt text.


### **Part 2: All Recipes** ###
When the `#crafting-recipe-book` button is clicked, you should use the returned JSON object from the `recipes.php?block=all` to populate the page with all of the recipes available in the simualtion as explained below:
- Show the `#crafting-book-view` and hide the `#blocks-view`
- The `#header-text` heading should hold the text "Crafting Recipes"
- Each recipe card, will be appended to  `#crafting-recipes-here`
- Each indiviual recipe card should be contained in a div with the class of `.crafting-table`
- Directly inside of `.crafting-table` there should be two elements
  - An h2 which contains the name of the block being crafted
  - A div with a class of `.crafting-grid`
- Inside of `.crafting-grid` there should be three elements:
  - A div with the class `.craft-here` 
  - An image with a class of `.crafting-arrow`. (The source for this image can be found in the img folder of your local repository and has a name of `crafting-arrow`) 
  - a div with the class of `.block`,  `.recipe-block` and `.result`
- Inside of `.craft-here` there should be three divs all with the class of `.row`
- Inside of each div with the class `.row`, there should be 3 divs with the class of `.block` making 9 divs with the class `.block` in total
  -  The divs in the first div with the class `.row` should have classes of `.one`, `.two`, and `.three` respectively
  - The divs in the second div with the class `.row` should have classes of `.four`, `.five`, and `.six` respectively
  - The divs in the third div with the class `.row` should have classes of `.seven`, `.eight`,  and `.nine` respectively
   
Inside of the  divs with the class of `.block`, we will be appending the data from the api call to `recipes.php?brick={shortname}` 
- The `result` value should be used to create an image with a class of `.recipe-block` that will be appended to the div with the class of `.result`
- For the rest of the values in the resposne data, if  they are not null, then their value should be used as the source for an image, that will be appended to the block with the class that corresponds to the key that this value is being stored at in the JSON object. 
- If the value at one - nine have the value of planks, and the value of brick also includes planks, then all of the planks should have the value of the value of the `brick` paramter. If the `brick` parameter wasn't a planks, then a there should be a randomly select one of the planks types. Each recipe should only include one type of planks


When the `#back-to-crafting` button is clicked, the page should appear as described below:
- Hide the `#crafting-book-view` and show the `#blocks-view`
- The `#header-text` heading should hold the text "Let's Get Crafty"

### **Part 3: Block Details** ###
For each "crafted" block added to `#all-blocks` during the game, you will need to add the `.crafted` class as well as an event handler so that when the block is clicked it will fill the block inforamtion (`#block-inforamtion`) preview.

You will retrieve this data using the `block-info.php?name={shortname}` request, passing the clicked block's shortname as the parameter. You may find it helpful to give each block an id with the second "shorthand" name token in the API response, which handles special characters such as spaces in a few Pokemon names (e.g. "redstone-dust" is the shorthand name for "Redstone Dust"). For each block, the shortname represented in the `block-info.php?name={shortname}` response is the same the shortname that is returned by `block-info.php?name=all` responses. See the API documentation for more details. If a block doesn't have the class .crafted, nothing should happen when the block is clicked.

![details close up](./img/details.png)

Once a crafted block is clicked, the block data populates the description area on the left side of the page. This block information is in a div with the id of `#block-information.` You should use the returned JSON object from the `block-info.php?name={shortname}` request to populate the card with the block's information, as explained below:

- the `name` value should be used to populate the `#name` heading with the name of the block 
- the `shortname` should be used to create and popualate an image element that will be added to the `#block-image` div. 
  -   the image should have an class of `.show-it`
- the `description` should be used to populate the `#block-description` 
- In `minecrafting.html`, the `#craft-me` button has a class of hidden. But, if the value at `crafts` is longer than 0, then the `#craft-me` then it should appear on the screen, with the text "Craft With {name}" (note that name is the capitalized value and not the shortname)

When the `#craft-me` button is clicked, you will use the `crafts` array from `block-info.php?name={shortname}` to query the `recipes.php?brick={shortname}` for every block in the `crafts` array you should call the `recipes.php?brick={shortname}` to retrieve the indivual recipe . The responses from the api should populate the page as so:
- Show the `#crafting-book-view` and hide the `#blocks-view`
- The `#header-text` heading should hold the text "Crafting With {name}"
- Each recipe card, will be appended to  `#crafting-recipes-here`
- Each indiviual recipe card should be contained in a div with the class of `.crafting-table`
- Directly inside of `.crafting-table` there should be two elements
  - An h2 which contains the name of the block being crafted
  - A div with a class of `.crafting-grid`
- Inside of `.crafting-grid` there should be three elements:
  - A div with the class `.craft-here` 
  - An image with a class of `.crafting-arrow`. (The source for this image can be found in the img folder of your local repository and has a name of `crafting-arrow`) 
  - a div with the class of `.block`,  `.recipe-block` and `.result`
- Inside of `.craft-here` there should be three divs all with the class of `.row`
- Inside of each div with the class `.row`, there should be 3 divs with the class of `.block` making 9 divs with the class `.block` in total
  -  The divs in the first div with the class `.row` should have classes of `.one`, `.two`, and `.three` respectively
  - The divs in the second div with the class `.row` should have classes of `.four`, `.five`, and `.six` respectively
  - The divs in the third div with the class `.row` should have classes of `.seven`, `.eight`,  and `.nine` respectively
   
Inside of the  divs with the class of `.block`, we will be appending the data from the api call to `recipes.php?brick={shortname}` 
- The `result` value should be used to create an image with a class of `.recipe-block` that will be appended to the div with the class of `.result`
- For the rest of the values in the resposne data, if  they are not null, then their value should be used as the source for an image, that will be appended to the block with the class that corresponds to the key that this value is being stored at in the JSON object. 
- If the value at one - nine have the value of planks, and then they should randomly select one of the planks types. Each recipe should only include one type of planks

### **Part 4: Crafting Table Functionality** ###

In order to facilitate drag and drop in this assignment, we have created a setUpDragAndDrop function, which will allow users to click and drag blocks from the Block Library into the Crafting Table. Insert the code below, and call it in the init function to make sure that the crafting table will work. 
```
function setUpDragAndDrop(){
    let craftingGrid = qsa(".block");
    for (let i = 0; i < craftingGrid.length; i++) {
      craftingGrid[i].classList.add("droptarget");
      craftingGrid[i].addEventListener("dblclick", () => { craftingGrid[i].innerHTML = '' });
    }
```

The crafting table is a 3 x 3 grid that holds 9 crafting blocks, each of which can hold one block. When the `#crafting-arrow` is pressed, a call to the `crafting.php` api to check if the recipe crafts a block. Each square had a numeric value, and a class that matches. 

The crafting grid's classes:
 ||||
 |-|-|-|
| .one   | .two   | .thre |
| .four  | .five  | .six  |
| .seven | .eight | .nine |

The `#crafting-arrow` should have a click event listener that calls the `crafting.php` endpoint. This is the first post request in this assignment. This post request takes a FormData object that contains key value pairs of the class of square that contains a block in it, as well as the shortname of the block in that square. If a square in the grid is empty, then it should not be included in the request. 

There are two types of responses from `crafting.php`. If the blocks passed make something, then you will get a plain text response of the crafted block's shortname. In this case, the page should update by:
- Adding a `.crafted` class to block in `#all-block` that has the shortname returned. 
- Create an image with the src matching the shortname returned from the api and appending it to `#crafted-brick` 
- After 2 seconds, the crafting table should clear/reset.

If the blocks passed don't craft anything, then you will get a 400 error. In this case, you should update the page so that the `.
- Set the text in `#error-msg` to "hm... That didn't craft anything."
- After 2 seconds, the crafting table and the error message should clear/reset.

## **Internal Requirements** ##
Your webpage should match the overall appearance/behavior of the provided screenshots and
it must match the appearance/behavior specified in this document.

- Your JS should maintain good code quality as demonstrated in class and
detailed in the CSE 154 Code Quality Guidelines. We also expect you to implement relevant feedback from previous assignments. As usual, we have included some common things relevant to this assignment below.
- You should be reducing redundancy throughout your code.
- All programatically-generated image DOM elements should be given an alt tag.
- Your .js file must be in the module pattern and "use strict";
- Do not use any global variables, and minimize the use of module-global variables. Do not ever
store DOM element objects, such as those returned by the document.getElementById function, as
module-global variables. Other variables should be localized as much as possible.
If a particular literal value is used frequently, declare it as a module-global "constant" (const) IN_UPPER_CASE and use the constant in your code.
- Avoid unnecessary fetch requests to web services - you should only make requests where needed to update DOM elements based on the expected behavior outlined in this spec. We strongly recommend walking through different interactions on your page with the Networks table to see how often you are making fetch requests.
- You should make an extra effort to minimize redundant JavaScript code. Capture common operations as functions to keep code size and complexity from growing. You can reduce your code size by using the this keyword in your event handlers.
- Separate content (HTML), presentation (CSS), and behavior (JS). Your JS code should use styles and classes from the CSS when provided rather than manually setting each style property in the JS. For example, rather than setting the
.style.display of a DOM object to make it hidden/visible, instead, add/remove the .hidden
class in the provided CSS to the object's classList.  You may find the classList's toggle function helpful for toggling certain classes.
- Note that when you are computing a style property (such as width percentages), you will need to set the values in JS (make sure you understand why classes won't work easily here!)
- Your page must pass the CSE 154 ESLint (which runs every time you push to Gitlab)
- Do not include any files in your final repository other than those outlined in "Starter Files and Final Deliverables".
- Proper documentation on the .js file and all functions

## **Grading** ##
The grading distribution for this assignment will be broken down as follows (subject to small changes):
- External Correctness: 45-55%
- Internal Correctness: 35-45%
- Documentation: 5-10%

## **Academic Integrity** ##
As with other CSE 154 HW assignments, you may not work with other students on HW3, and all work must be your own. Submissions found sharing code or using code from resources online will be subject to the University's Academic Misconduct process. You may also not place your solution to a publicly-accessible website, neither during nor after the school quarter is over. Doing so is considered a violation of our
course academic integrity policy. As a reminder: This page page states:

The Paul G Allen School has an entire page on
[Academic Misconduct](https://www.cs.washington.edu/academics/misconduct) within the context of Computer Science, and the University of Washington has an entire page on how [Academic Misconduct](https://www.cs.washington.edu/academics/misconduct) is handled on their [Community Standards and Student Conduct](https://www.washington.edu/cssc/) Page. Please acquaint yourself with both of those pages, and in particular how academic misconduct will be reported to the University.