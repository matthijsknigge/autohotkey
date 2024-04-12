# How this script works:
1. Persistent and Mouse Hook: The script runs continuously and installs a mouse hook to track mouse events accurately.
2. Coordinate Mode: Sets the mouse coordinate mode to be relative to the screen.
3. Variable Initialization: Initializes variables to track the state of the left mouse button and the starting vertical position of the mouse.
4. Left Mouse Button Press: When the left mouse button is pressed, it captures the current Y position of the mouse.
5. Left Mouse Button Release: When the left mouse button is released, it changes the tracking state.
6. Mouse Movement Handling: While the left button is down, the script continuously checks the mouse's Y position. If the mouse has moved more than the ScrollSensitivity threshold, it triggers a scroll action. The script calculates how many times to send the scroll command based on the distance the mouse has moved divided by the sensitivity.
7. Adjust Sensitivity: You can adjust the ScrollSensitivity variable to make the scroll more or less sensitive to mouse movement. Smaller values make the scrolling more sensitive.


You can modify and expand this script as needed, but this provides a basic framework for creating a drag-to-scroll function using AutoHotkey. Make sure to save this script with a .ahk extension and run it using the AutoHotkey software.
