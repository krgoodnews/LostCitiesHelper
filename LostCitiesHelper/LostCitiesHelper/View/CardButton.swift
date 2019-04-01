//
// Created by 국윤수 on 2019-03-13.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import UIKit

import Then
import SnapKit

class CardButton: SmartAdjustTitleColorButton {
  var card: Card {
    didSet {
      fillUI()
    }
  }

  var cardColor: UIColor {
    return card.city.cityType.themeColor
  }

  override var isHighlighted: Bool {
    didSet {
      if isHighlighted {
        backgroundColor = cardColor.withAlphaComponent(0.5)
        return
      }

      fillUI()
    }
  }

  private func fillUI() {
    backgroundColor = cardColor.withAlphaComponent(card.isHaving ? 0.8 : 0.2)
  }

  init(card: Card) {
    self.card = card
    super.init(frame: .zero)

    setupView()
  }

  private func setupView() {
    let buttonTitle = card.cardType == .number ? String(card.value) : "🤝"
    setTitle(buttonTitle, for: .normal)

    layer.borderWidth = 1
    layer.borderColor = cardColor.cgColor

    self.addTarget(self, action: #selector(didTapCard), for: .touchUpInside)
    fillUI()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("cardButton init aDecoder")
  }

  @objc private func didTapCard() {
    card.isHaving = !card.isHaving
    print("card.city.score = \(card.city.score)")
  }
}
