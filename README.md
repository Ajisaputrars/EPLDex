# EPLDex

This is a simple app to present English Premier League 2019-20 club information. There are only Main screen, Detail screen, and Profile screen. Although this app is very simple, you will learn many things in this app.

### No Storyboard
Some developers hate Storyboard, XIB, or NIB.  I personally hate all of them. All of user interface in this app is created using only pure Swift code. Yes! No Storyboard, no XIB or NIB, no drag-and-drop rituals. Your Mac keyboard is the only weapon to write code of the user interface.

### Auto Layout
Auto Layout dynamically calculates the size and position of all the views in view hierarchy, based on constraints placed on those views. In other words, Auto Layout lets you can create responsive user interface for iPhone dan iPad. The view constraint, size and position will be automatically adjusted based on screen size.

Dealing with Auto Layout constraint sometimes confusing. To simplify the process, I use **_[SnapKit][1]_** library, because making constraint using it is way much easier and, in turn, make the code cleaner.

![][image-1]
![][image-2]
### MVC Architecture
MVC stands for Model-View-Controller.  What does it mean?
- **Model** : Represent the model of your data. In this project, we will create an Team model that contains English Premier League club for 2019-20 season.
- **View** : Represent the view of your app. This view is represented in the separate Swift file.
- **Controller**: Controller is the central heart of the application architecture. MVC architecture makes sure that the controller is clean, as clean as possible.

### Mac Catalyst
Apple has officialy released Mac Catalyst. iOS apps will share the same project and source code, so the developer can efficiently convert the iOS app to be able to be run on macOS platform.
![][image-3]
### **Author**

* **[Aji Saputra Raka Siwi][2]**

This project is free and open. You can participate to this project to make even more better for everybody to learn.

### **License**
This project is licensed under the MIT license - see the [**LICENSE**]() file for details.

---- 

Copyright © 2020 **Aji Saputra Raka Siwi**

[1]:	https://github.com/SnapKit/SnapKit
[2]:	https://github.com/Ajisaputrars


[image-1]:	https://github.com/Ajisaputrars/Dicoding-iOS-Pemula-Submission/blob/master/EPL.jpg
[image-2]:	https://github.com/Ajisaputrars/Dicoding-iOS-Pemula-Submission/blob/master/Landscape.jpg
[image-3]:	https://github.com/Ajisaputrars/Dicoding-iOS-Pemula-Submission/blob/master/catalyst.png