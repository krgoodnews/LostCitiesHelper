//
// Created by 국윤수 on 2019-03-14.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import UIKit

class SmartAdjustTitleColorButton: UIButton {
  override var backgroundColor: UIColor? {
    didSet {
      let titleColor = smartTitleColor(backgroundColor: backgroundColor)
      setTitleColor(titleColor, for: .normal)
    }
  }

  private func smartTitleColor(backgroundColor: UIColor?) -> UIColor {
    guard let backgroundColor = backgroundColor else {
      return .gray
    }

    return backgroundColor.isDarkColor ? .lightGray : .darkGray
  }
}

extension UIColor {
  var isDarkColor: Bool {
    var r, g, b, a: CGFloat
    (r, g, b, a) = (0, 0, 0, 0)
    self.getRed(&r, green: &g, blue: &b, alpha: &a)
    let lum = (0.2126 * r + 0.7152 * g + 0.0722 * b) * a
    return  lum < 0.50 ? true : false
  }
}