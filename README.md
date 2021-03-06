![Header](gh-assets/brand-header.png)
# Beaver
*A manageable to do list*

This project is inspired by the [Paradox of Choice](https://en.wikipedia.org/wiki/The_Paradox_of_Choice "Wikipedia") and [Getting Things Done Step 1](https://gettingthingsdone.com/insights/step-1-capture/)!

## How it works

There are three important screens in the app (managed with AppState's scene property, injected into ContentView's environment via AppDelegate):
1. [The Pink screen](#the-pink-screen)
2. [The Blue screen](#the-blue-screen)
3. [The Green screen](#the-green-screen)

### [The Pink Screen](Beaver/Views/StoreView.swift)
At the beginning of your day, you see the pink screen! It's the only time you'll see **all** of your incomplete to-dos.

![Demo Screen](gh-assets/pinkScreenDemo.gif)

Just tap on the things you want to do today. Then, you go to...

### [The Blue Screen](Beaver/Views/DayView.swift)
Once you pick what you want to do, everything else disappears for the day! Now, you're on the blue screen.

![Demo Screen](gh-assets/blueScreenDemo.gif)

*What if something new comes up?*
Use the add bar at the top of the screen. It'll go to the pink screen, so you can get it off your mind safely.

*What if I made a mistake?*
Just shake your device, and you can rebuild your day! Already completed tasks will be archived

### [The Green Screen](Beaver/Views/DoneView.swift)
Once you finish everything for the day, do **whatever you want**!

![Demo Screen](gh-assets/greenScreenDemo.gif)

## Technologies
- SwiftUI (with AppDelegate and SceneDelegate)
- CoreData with CloudKit
- Firebase Analytics

- Figma for design
- Notion for project management
- Apple Pencil to write out ideas

## Important directories
- [Views](Beaver/Views)
- [Utility Files](Beaver/Utility) 
