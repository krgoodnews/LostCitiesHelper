//
// Created by 국윤수 on 2019-03-10.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import UIKit

import Then
import SnapKit

class CityStackView: UIStackView {
  var city: City {
    didSet {
      fillUI()
    }
  }

  private func fillUI() {
  }

  init(city: City) {
    self.city = city
    super.init(frame: .zero)
    setupView()
  }

  func setupView() {
    distribution = .fillEqually
    spacing = -1
    axis = .vertical

    for i in 2...10 {
      let button = CardButton(card: Card(city: self.city, type: .number, number: i))
      self.addArrangedSubview(button)
    }

  }

  required init(coder: NSCoder) {
    fatalError()
  }

}
