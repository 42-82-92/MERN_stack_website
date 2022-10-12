# MERN_stack_website

The goal of this project is to build a portfolio website on a MERN stack and HTML, CSS (SASS), and JavaScript. The portfolio build process will follow the work outlined in the video [Build and Deploy a Fullstack Responsive Portfolio Website | ULTIMATE Step By Step Tutorial 2022](https://www.youtube.com/watch?v=3HNyXCPDQ7Q)

Resume video at: https://youtu.be/3HNyXCPDQ7Q?t=6964
Next do the Sanity & React section, then Higher-order components if you have time/ feel comfortable.

## What will you learn?

- React functional components and their reusability
- React file and folder structure
- SCSS and Flex
- Animations using Framer Motion
- Sanity content platform (allows us to manage the content through the entire creation process)

## Up and running

- Start the app by navigating to the `frontend_react` folder and run `npm start`
- Start Sanity by navigating to the `backend_sanity` folder and running `santiy start`

## Files and folders 

- index.css: The css for your main page.  
- index.js: where you render the main react component onto your root element.  
- App.scss
- App.js
- /src/: source code for you app.  
- /public/: the public content seen on your website.  
- package.json
- package-lock.json

## Knowledge notes

- **DOM**: (Document Object Model) The DOM is the structure of the web page and is seen by the user. On the technical side, the DOM is a tree structure that represents the web page. This can be programmatically accessed so that browser extensions, java script, and more can easily change how the DOM is rendered and interacted with. FireFox can show the DM in a 3D view, but if you don't have that then just think of a webpage as a series of layers, like a photoshop image.

- **MVC** (Model, view, controller): This is a concept/design pattern of interactions that simplifies an app down to 3 components; the model, the view, and the controller. The goal to separate functionality, logic and the UI of an application.  
  And example is below:
    Model -> Database backend (the brain)
    View -> front-end (the 5 senses)
    controller -> server (the body)

- **Sanity**: This is a document DB that manages content and schemas.
