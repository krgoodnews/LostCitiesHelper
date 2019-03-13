//
// Created by 국윤수 on 2019-03-10.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import UIKit

import Then
import SnapKit

class CityStackView: UIStackView {
  override init(frame: CGRect) {
    super.init(frame: frame)

    setupView()
  }

  func setupView() {
    distribution = .fillEqually
    spacing = -1
    axis = .vertical

    for i in 2...10 {
      let button = CardButton(card: Card(.number, number: i))
      self.addArrangedSubview(button)
    }
  }

  required init(coder: NSCoder) {
    super.init(coder: coder)
  }

}
