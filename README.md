# ToolbarProject
Demonstrate the toolbar view modifier for SwiftUI with different placements

Youtube tutorial --> https://youtu.be/jTW5Z-kyL8g

## Use toolbar for iOS
<img src="images/iOSToolbarplacement.png" width="324">

## Toolbar with keyboard placement
can add e.g. Buttons above the keyboard area

<img src="images/iOSToolbarKeyboard.png" width="324">

## Use toolbar for macOs
 ![](images/macOSToolbarPlacement.png)
 
# You can customize the toolbar with identifying

                .toolbar(id: "my toolbar", content: {
                    ToolbarItem(id: "navigation", placement: .navigation, showsByDefault: true) {
                        Text("navigation")
                    }
                )

 ![](images/macOSCustomizeToolbar.png)

