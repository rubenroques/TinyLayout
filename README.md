# TinyLayout

<!---[![Twitter: @Rubn_Rocks](https://img.shields.io/badge/contact-@RubnRocks-blue.svg?style=flat)](http://goo.gl/lepedg)--->
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/rubenroques/TinyLayout/blob/master/LICENSE)

A µframework with the purpose to be the most brief and readable way to declare or apply a AutoLayout NSLayoutConstraint in Swift.

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
If you’re using [Carthage](https://github.com/Carthage/Carthage), simply add
TinyLayout to your `Cartfile`:

```
github "rubenroques/TinyLayout"
```

## Usage
**The simplest version, without multipliers or constraints.**
```swift
//Add a NSLayoutConstraint to the view.superview
(view,.Top)|=|(superview,.Top)
```
```swift
//Create a NSLayoutConstraint variable
let layoutConstraint = (view,.Top)|=|&(superview,.Top)
```
The default values are ```constant = 0``` and ```multiplier = 1```.

**With a constant value.**
```swift
//Add a NSLayoutConstraint to the view.superview
(view,.Top)|=|(superview,.Top, 50)
(view,.Left)|=|(superview,.Left, -100)
```
```swift
//Create a NSLayoutConstraint variable
let layoutConstraintTop = (view,.Top)|=|&(superview,.Top, 50)
let layoutConstraintLeft = (view,.Left)|=|&(superview,.Left, -100)
```


**With a constant value and a multiplier.**
```swift
//Add a NSLayoutConstraint to the view.superview
(view,.Top)|=|(superview,.Top, 1.2, 50)
(view,.Left)|=|(superview,.Left, 2, -100)
```
```swift
//Create a NSLayoutConstraint variable
let layoutConstraintTop = (view,.Top)|=|&(superview,.Top, 1.2, 50)
let layoutConstraintLeft = (view,.Left)|=|&(superview,.Left, 2, -100)
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
## Bugs?
If you find any problem with TinyLayout, submit an issue.

---
## Contributing
TinyLayout it's completely open to new ideas and suggestions. Create an issue and lets discuss what you have in mind.

---
## License
This project is licensed under the terms of the MIT license. See the LICENSE file.
