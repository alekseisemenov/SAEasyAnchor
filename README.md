# SAEasyAnchor
# Anchor it's Auto Layout in one line of code written on Swift
![image](https://user-images.githubusercontent.com/61948950/87155126-12eaa400-c2c3-11ea-89cd-cd956ae119d7.png)

[![CI Status](https://img.shields.io/travis/alekseisemenov/SAEasyAnchor.svg?style=flat)](https://travis-ci.org/alekseisemenov/SAEasyAnchor)
[![Version](https://img.shields.io/cocoapods/v/SAEasyAnchor.svg?style=flat)](https://cocoapods.org/pods/SAEasyAnchor)
[![License](https://img.shields.io/cocoapods/l/SAEasyAnchor.svg?style=flat)](https://cocoapods.org/pods/SAEasyAnchor)
[![Platform](https://img.shields.io/cocoapods/p/SAEasyAnchor.svg?style=flat)](https://cocoapods.org/pods/SAEasyAnchor)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Swift 5.0. Ready for use on iOS 12+

## Installation

SAEasyAnchor is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SAEasyAnchor'
```
## Manually
If you prefer not to use any of dependency managers, you can integrate SAEasyAnchor into your project manually. Put Source/SAEasyAnchor folder in your Xcode project. Make sure to enable Copy items if needed and Create groups.
## Usage

import SAEasyAnchor into your file :
```ruby
import SAEasyAnchor
...

let sampleView = UIView()

//set your view to center any another view
sampleView.anchorToCenter(view:anyOtherView, size: .init(width: 100, height: 100))

//or clip edges your view to superView edges
sampleView.anchorEdgesToSuperView() 

//or set any constraints you are want with / or without paddin and size of your view
sampleView.anchor(top: NSLayoutYAxisAnchor?, bottom: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets, size: CGSize)
```
## Author

alekseisemenov, w.l.e.o@icloud.com

## License

SAEasyAnchor is available under the MIT license. See the LICENSE file for more info.
