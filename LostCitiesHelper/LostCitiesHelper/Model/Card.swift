//
// Created by 국윤수 on 2019-03-13.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import UIKit

import Then
import SnapKit

struct Card {
  var isHaving = false
  var value: Int
  var cardType: CardType

  init(_ type: CardType, number: Int) {
    self.cardType = type
    self.value = number
  }

  enum CardType {
    case number
    case handShake
  }
}
