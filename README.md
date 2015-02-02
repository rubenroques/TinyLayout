# TinyLayout
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

# Roadmap

# License
This project is licensed under the terms of the MIT license. See the LICENSE file.


