//
//  ATabController.swift
//  AutoReviews
//
//  Created by Swift on 24.02.2021.
//

import UIKit

@objc enum Tab: Int {
  case first = 0
  case second
}

@objc protocol TabController {
  @objc func switchTab(to: Tab)
}

class ATabController: UIViewController {
  weak var tabDelegate: TabController?
}

