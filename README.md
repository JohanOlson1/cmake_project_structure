# cmake_project_structure
- A relatively simple project strucure that satisfy most C++ project necessities <br>

## executables
- More applications can be added under here. <br> 
- The existing applications can also be compiled as different targets, where they include different libraries. <br>

## libraries
- Source code is meant to be made into software libraries that are linked together. This allows reusablity of within this software and other software in the future. It also clearly separates the limited code that should be written for each application under executables, which should only fetch and run a number of library components <br>
- The libaries are divided into a number of layers, these represent the common architectural layers one includes in larger projects. Where lower layered components should not know of (not link to) components (libraries) at a higher layer. <br>
- Within each layer a number of components/libraries are included. <br>

## extern
- Any third party libraries included (most commonly as git submodules) are placed here. <br>
- Placing the third party software separetely allows for excluding these from certain types of code analysis, along with clearly separating our own code from it. <br>

## scripts
- Any scripts meant to for example build, run and perform code analyis should be placed here. <br>
- Having defined scripts for these features allows for contuinuous update of these along with the code (source control). <br>
- It also makes it easier for future people fetching a repository to run the code the intended way. <br>
- Typically more niche ways to work with the code is not included as a script, but the most common build and execution should be here. <br>
