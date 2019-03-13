//
// Created by 국윤수 on 2019-03-10.
// Copyright (c) 2019 국윤수. All rights reserved.
//

import UIKit

import Then
import SnapKit

class InputScoreCell: BaseCell {

  public static func size(collectionViewSize: CGSize) -> CGSize {
    let width = collectionViewSize.width - 24
    let height = collectionViewSize.height
    return CGSize(width: width, height: height)
  }

  let citiesStackView = UIStackView().then {
    $0.axis = .horizontal
    $0.distribution = .fillEqually
    $0.spacing = 4
  }

  override func setupView() {
    super.setupView()
    addSubview(citiesStackView)
    citiesStackView.snp.makeConstraints {
      $0.edges.equalToSuperview().inset(8)
    }

    for i in 0..<6 {
      let cityStackView = CityStackView()
      citiesStackView.addArrangedSubview(cityStackView)
    }
  }
}

class BaseCell: UICollectionViewCell {
  func setupView() {

  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
}