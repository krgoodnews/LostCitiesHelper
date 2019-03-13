//
// Created by 국윤수 on 2019-03-13.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import Foundation

struct City {
  var numbers: Array<Int>?
  var handShakesCount = 0

  var score: Int {
    var scoreCount = numbers?.reduce(0) { $0 + $1 } ?? 0
    scoreCount -= 20
    scoreCount *= (handShakesCount + 1)

    if (numbers?.count ?? 0) + handShakesCount >= 8 {
      scoreCount += 20
    }

    return scoreCount
  }
}