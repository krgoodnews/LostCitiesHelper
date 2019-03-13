//
//  InputScoreViewController.swift
//  LostCitiesHelper
//
//  Created by 국윤수 on 04/03/2019.
//  Copyright © 2019 국윤수. All rights reserved.
//

import UIKit

import Then
import SnapKit

private let inputScoreCellID = "inputScoreCellID"

class InputScoreViewController: UIViewController {

  lazy var collectionView = UICollectionView(frame: .zero,
          collectionViewLayout: UICollectionViewFlowLayout()).then {

    $0.backgroundColor = .white
    $0.delegate = self
    $0.dataSource = self
    $0.register(InputScoreCell.self, forCellWithReuseIdentifier: inputScoreCellID)
    $0.isPagingEnabled = true
    $0.showsHorizontalScrollIndicator = false

    if let layout = $0.collectionViewLayout as? UICollectionViewFlowLayout {
      layout.scrollDirection = .horizontal
      layout.sectionInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
      layout.minimumLineSpacing = 8
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "점수 입력"
    view.backgroundColor = .white

    view.addSubview(collectionView)
    collectionView.snp.makeConstraints {
      $0.top.equalTo(view.safeAreaLayoutGuide).offset(60)
      $0.left.right.equalTo(view.safeAreaLayoutGuide)
      $0.bottom.equalTo(view.safeAreaLayoutGuide)
    }
  }

}

extension InputScoreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 2
  }

  public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: inputScoreCellID, for: indexPath) as! InputScoreCell

    cell.layer.borderColor = UIColor.red.cgColor
    cell.layer.borderWidth = 1

    return cell
  }

  public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return InputScoreCell.size(collectionViewSize: collectionView.frame.size)
  }
}