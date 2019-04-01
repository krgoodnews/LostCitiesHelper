//
// Created by 국윤수 on 2019-03-13.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import Foundation

struct Game {
  var playerName: String
  var cities: [City]

  init(playerName: String) {
    self.playerName = playerName
    self.cities = [City(cityType: .pompeii),
                   City(cityType: .amazon),
                   City(cityType: .himalaya),
                   City(cityType: .egypt),
                   City(cityType: .atlantis),
                   City(cityType: .darkWorld)]
  }
}
