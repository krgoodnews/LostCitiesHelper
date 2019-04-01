//
// Created by 국윤수 on 2019-03-13.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import Foundation

struct Card {
  var city: City

  var isHaving = false
  var value: Int
  var cardType: CardType

  init(city: City, type: CardType, number: Int) {
    self.city = city
    self.cardType = type
    self.value = number
  }

  enum CardType {
    case number
    case handShake
  }
}
