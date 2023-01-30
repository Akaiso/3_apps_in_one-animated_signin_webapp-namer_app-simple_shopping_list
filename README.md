# G.D-RandomNamePair 
# Google Developer Profile journey

A simple application that randomly generates a pair of english words whenever the next button is pressed.

KEY NOTES:
ThemeData properties to set app colors and fonts accross the application
Working with VS CODE
Extracting widgets - compositing / composition - creating your own widgets like abstraction in OOP concept
Widgets are blue prints or configuration (to Elements) for pieces of an apps UI
Elements are displayed on the screen
The analysis_option.yaml: This file on Flutter applications determines how strict flutter should be when analysing your code
! is called Bang operator
colorScheme.onPrimary: In the ThemeData, finds a suitable color that fits the colorScheme.primary
MainAxisSize.min: Tells the Row or Column not to take all the available horizontal or vertical space as the case may be
Fail-fast Principle: prevents app crash during production e.g the switch statement that has a default should there be other case(s) that was not included
Wrap , FittedBox are Flutter widgets that make your app automatically responsive
Device-independent-pixels, also known as logical pixels. Approximately 36pixels per centimeter and 96pixels per inch
Flutter works with logical pixels as a unit of length in such case, LayoutBuilder() is ideal
CURRYING & LAMBDA expressions: Dart supports these functional programming features. Passing functions as arguments, assigning a function to a variable, deconstructing a function that takes multiple arguments into a sequence of functions that each take a simgle argument also called CURRYING, creating a nameless function that can be used as a constant value also called a LAMBDA EXPRESSION; Lambda expressions were added to Java in the JDK8 release.

# ANIMATED SIGNIN WEBAPP
In Flutter, there are two main approaches to building User Interfaces (UI): Imperative and Declarative.

Imperative UI: This approach focuses on how to build the UI by defining the steps and logic that need to be taken. It is similar to traditional programming, where the code defines how the UI should be constructed.

Declarative UI: This approach focuses on what the UI should look like, rather than how it should be built. In this approach, you define the desired end state of the UI and let Flutter handle the creation and updates to the UI based on the defined state.

Declarative UI is the recommended approach in Flutter because it provides several benefits, such as:

Improved code readability and maintainability.
Easier testing and debugging.
Automated UI updates based on changes to the state.
More efficient UI updates and animations.
Both approaches can be used to build a UI in Flutter, but the declarative approach is preferred for its simplicity, efficiency, and improved overall developer experience.

- Anonymous functions have no name or identifier. setState:((){}), takes in an anonymous fuction. Most high order functions take an anonymous function
- Find out how to debug flutter app using the Dart Dev tools, how to install etc
- WebSockets is a protocol for bi-directional, real-time communication between a client (typically a web browser) and a server. It enables full-duplex communication channels over a single TCP connection, allowing for efficient and low-latency communication.

Some common uses of WebSockets include:

Real-time chat applications
Multiplayer games
Live data streaming and updates, such as stock market or weather data.
Collaborative editing and document sharing.
Online marketplaces and e-commerce platforms for real-time bidding and purchase notifications.
Remote control and monitoring applications, such as smart home devices.
IoT (Internet of Things) device communication.
Real-time analytics and reporting.
WebSockets offer many advantages over traditional HTTP communication, such as faster and more efficient communication, reduced server load, and improved scalability. WebSockets are widely supported by modern web browsers and are now a standard feature of most web development frameworks, including Node.js and Flutter.
- Interpolate: Insert(something of a different nature) into something else e.g illustrations were interpolated in the text.
AnimatedController can be used to run any animation in flutter
AnimatedBuilder rebuids the widget tree when the value of an Animation changes
Using a tween, you can interpolate between almost any value, in this case, its the color

Vsync(vertical synchronization) : In Flutter, vsync (vertical synchronization) refers to the synchronization of the application's rendering pipeline with the display refresh rate. It is used to prevent screen tearing and to ensure smooth animations.

When an animation is in progress, Flutter schedules a new frame to be drawn based on the current state of the animation. The vsync signal ensures that the frame is drawn at the right time, avoiding any visual artifacts such as screen tearing.

The vsync signal is provided by the operating system and is tied to the refresh rate of the display. In Flutter, the vsync signal is managed by the animation controller, which is responsible for scheduling animations and controlling their speed and direction.

By default, Flutter's animation system uses vsync to ensure smooth and tear-free animations. However, if vsync is disabled, animations may become janky and suffer from visual artifacts, so it's important to keep it enabled for the best user experience.

Vsync synchronizes the refresh rate and frame rate of a monitor

Vsync also prevents Screen tearing - Screen tearing is a visual artifact that occurs when the display is not properly synchronized with the graphics card. It is often seen as a horizontal line that splits the screen into two parts, with each part showing a different frame.

Screen tearing occurs when the graphics card is rendering frames at a faster rate than the display is able to refresh. This can result in two or more frames being displayed simultaneously, creating a torn image.

Screen tearing is most commonly seen in fast-paced games or animations where the frame rate is high, and it can cause a significant degradation in the visual quality of the experience.

To prevent screen tearing, the display and graphics card must be synchronized using a technique such as vertical synchronization (vsync). Vsync works by limiting the frame rate to the refresh rate of the display, ensuring that only one frame is displayed at a time and preventing screen tearing.

In Flutter, vsync is managed by the animation controller and is enabled by default, ensuring smooth and tear-free animations for the best user experience.

# SIMPLE SHOPPING LIST

typedef: Means you can define your own type e.g it is user-defined function / data
In Dart (the programming language used by Flutter), a typedef (short for "type definition") is a way to define a custom data type by giving it a name. It can be used to create an alias for a function type, allowing you to write more readable and reusable code.

For example, you can use a typedef to define a custom type for a function that takes two integers as input and returns an integer as output:

typedef IntCallback = int Function(int a, int b);

You can then use this custom type in function signatures or variables, making the code more expressive:

void callIntCallback(IntCallback callback) {
  print(callback(2, 3));
}

main() {
  callIntCallback((a, b) => a + b);
}

Typedefs can also be used to create custom types for callback functions, which are commonly used in Flutter to handle events and animations. By using typedefs, you can write code that is more readable, maintainable, and reusable, improving the overall quality of your Flutter applications.

syntax: 
typedef alias_name = Funtion_type;

typedef CompareFunction = int Function(int a, int b);
int sortAscending(int a, int b) => a-b;
int sortDescending(int a, int b) => b-a;
void main(){
CompareFuntion sort = sortAscending;
print(sort(3,4);
sort = sortDescending;
print(sort(3,4);
}

In the example above, CompareFunction is a typedef that defines a custom type alias for a function that takes two int arguments and returns a int. The sortAscending and sortDescending functions both match the CompareFunction type and can be assigned to a variable of type CompareFunction





