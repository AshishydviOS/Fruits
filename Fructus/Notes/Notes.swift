//
//  Notes.swift
//  Fructus
//
//  Created by Ashish Yadav on 22/04/22.
//


/*
 MARK: - Notes
 
 1. SwiftUI App Lifecycle is chosen for this iOS 15 Project,
 therefor we don't have to create a launch screen using the old storyboard technology.
 
 2. While Adding the color in asset, Follow the below steps:
 - Click on plus button
 - Select color Set
 - In Attribute inspector, in appearance row select Any, Dark
 - In Colors section, in content row, select sRGB
 - And in input method select 8 bit hexadecimal and add your hex value
 
 
 3. We can also use SVG file too in App Development
 - Drag and drop the SVG file
 - In Attribute inspector, check mark on the Resizing field

 4. Accent Color
 - This new accent color set is globally used by the OS in the iOS App
 - As you may know, the accent color is widely used for button and other different UI Elements in here and there

 5. Command + (click in control to select the quick options available with control to perform)
 
 
 ————————————————
 @State (property wrapper)
 Ex.
 @State private var isAnimating : Bool = false
 - This will allow us to mutate the state of animation every time when the particular view appears on the screen.
 - Bydefault its value is false, meaning the image is still, and there is no animation
 - Set it’s value to true whenever the view is appear on the screen
 ————————————————
 If you want to perform any operation before the view appears on screen, then you can use below modifier
 .onAppear(
     // Your code
 )
 ————————————————
  
 ******************************************
 @main
 struct FructusApp: App {
     var body: some Scene {
         WindowGroup {
             OnboardingView()
         }
     }
 }
 ******************************************

 @main
 in the swiftUI is a main feature, it allows a tie to serve as an entry point of the execution of the program.
 Normally, a swift program would require a main.swift file to execute
 Now with this @main attribute, we can delegate that responsibility and our program automatically performs all the necessary setup and
 Launch to get our app on the screen.
 ————————————————

 App
 This is new protocol API and all application conforms to this protocol on start
 Both view and app can declare the data dependencies and app however is built using scene
 So its body property returns scene instead of view

 And finally we find a new WindowGroup scene inside the body as well
 ————————————————

 ******************************************
 SwiftUI App lifecycle
 ******************************************
 Views
 Views are very important because each of view defines a piece of UI in the application.
 When we look in an app, everything we see is our view.
 Individual image or  piece of text are used to the horizontal or vertical scrolling container holding them are also views.
 To put it simple views serve as the basic building block, rendering everything we saw on the Screen.
 And they can composed together to form a more complex UI

 —————————————————
 Scenes
 Views form the content of scenes allowing them to be independently displayed by the platform.
 Those senes can also be composed together to form more complex scenes.
 Some platforms like
 iPadOS can show multiple windows side by side.
 macOS can provides another great example of how scene content can appear in different ways.
 For example, In multiple windows, stack windows, sidebars, and so on
 Other platform like watchOS, iOS and TVOS, prefer to show only our single full screen window for each app.

 —————————————————
 Our onboarding view is contained within scene called WindowGroup
 The WindowGroup scene manages the window that our onboarding view run into
 It can also create additional windows within the same window.
 This is where we will develop the logic that will control which view should be rendered
 The initial onboarding view or the content view

 This WindowGroup scene manages our main UI in their new SwiftUI app lifecycle.

 ******************************************
 ******************************************

 Every Onboarding screen must have at least one exit way that navigates the user to a different screen
 to make this work properly we need to store its state value
 Using a permanent storage on the device
 for that functionality we can use now of their swiftUI property wrapper called
 AppStorage
 —————————————————

 AppStorage
 It’s swiftUI’s dedicated property wrapper for reading values from UserDefaults
 Also this property wrapper automatically validates the app’s body property on a value change and refresh it’s UI Immediately
 This app storage uses the UserDefaults data storage, which is ideal for storing small piece of information
 About the app, such as different kind of settings, utilities, etc.

 Here we are going to use this app storage to store and manage the actual state of the onboarding screen.
 —————————————————

 @Environment(\.presentationMode) var presentationMode

 This is environment property wrapper allows us to create properties that store values provided to us externally
 For example,
 is the user in light mode or dark mode?
 What timezone are they on? and so on

 All this information or more are values that come from the environment of the device.
 
 */
