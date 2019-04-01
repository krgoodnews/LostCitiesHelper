//
// Created by 국윤수 on 2019-03-13.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import UIKit

struct City {
  enum CityType {
    case pompeii, amazon, himalaya, atlantis, egypt, darkWorld

    var themeColor: UIColor {
      switch self {
      case .pompeii:
        return .red
      case .amazon:
        return .green
      case .himalaya:
        return .groupTableViewBackground
      case .atlantis:
        return .blue
      case .egypt:
        return .yellow
      case .darkWorld:
        return .purple
      }
    }
  }

  init(cityType: CityType) {
    self.cityType = cityType
  }

  var cityType: CityType
  var cards: [Card]?

  var numbers: [Int]? {
    return cards?.filter({ $0.isHaving == true && $0.cardType == .number }).map { $0.value }
  }

  var handShakesCount = 0

  var multiplier: Int {
    return handShakesCount + 1
  }

  var scoreSum: Int {

    return numbers?.reduce(0) { $0 + $1 } ?? 0
  }

  var bonusScore: Int {
    if (numbers?.count ?? 0) + handShakesCount >= 8 {
      return 20
    }

    return 0
  }

  var score: Int {
    var result = scoreSum
    result -= 20
    result *= multiplier

    result += bonusScore
    return result
  }

}