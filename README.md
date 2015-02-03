# TinyLayout

<!---[![Twitter: @Rubn_Rocks](https://img.shields.io/badge/contact-@RubnRocks-blue.svg?style=flat)](http://goo.gl/lepedg)--->
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/rubenroques/TinyLayout/blob/master/LICENSE)

The most brief and readable way to declare or apply a NSLayoutConstraint in Swift.

## What can TinyLayout do for you?
With TinyLayout you can stop doing this:

```swift
let superview = self.view
let view = UIView()
view.setTranslatesAutoresizingMaskIntoConstraints(false)
superview.addSubview(view)

superview.addConstraint(NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: superview, attribute: .Top, multiplier: 1, constant:0))
```

And start doing this:
```swift
let superview = self.view
let view = UIView()
superview.addSubview(view)

(view,.Top)|=|(superview,.Top)
```
---


## Integration

#### Carthage
(to do)

#### CocoaPods 
(pre-released version)
(to do)

#### Manually
To use ```TinyLayout``` in your project you just need to drag TinyLayout folder to the project tree.


## Usage
```swift
//Create a NSLayoutConstraint variable
let layoutConstraint = (view,.Top)|=|&(superview,.Top)
```

```swift
//Add a NSLayoutConstraint to the view.superview
(view,.Top)|=|(superview,.Top)
```

---
## Roadmap
1. Finish [Roadmap](#roadmap)  :)
2. ["You should be testing your library."] (http://guides.cocoapods.org/making/using-pod-lib-create.html#choosing-a-test-framework)
3. Create a ```typealias``` to avoid repeat the long tuples used in the functions parameter names
4. Improve demo app
5. Add support to fallback constrains using an array of UIView ```(view,.Top)|=|([superview, labelA, labelB],.Top)```
6. Create func to set the NSLayoutConstraint priority in the declaration
7. Migrate from UIView to AnyObject


---
## Bugs? What bugs!?
If you find any technical problem with TinyLayout, submit an issue.

---
## Contributing
TinyLayout it's completely open to new ideas and suggestions. Create an issue and let me know what you have in mind.

---
## License
This project is licensed under the terms of the MIT license. See the LICENSE file.
