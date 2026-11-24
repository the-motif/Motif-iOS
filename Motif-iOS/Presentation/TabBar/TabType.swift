//
//  TabType.swift
//  Motif-iOS
//
//  Created by dev on 11/24/26.
//

import UIKit

enum TabType: String, CaseIterable {
    case home
    case search
    case purchase
    case profile
    
    var icon: UIImage? {
        switch self {
        case .home:
            UIImage(resource: .icHome)
        case .search:
            UIImage(resource: .icSearch)
        case .purchase:
            UIImage(resource: .icHeart)
        case .profile:
            UIImage(resource: .icUser)
        }
    }
    
    var title: String {
        switch self {
        case .home:
            "홈"
        case .search:
            "검색"
        case .purchase:
            "구매함"
        case .profile:
            "마이"
        }
    }
    
    func makeViewController() -> UIViewController {
        switch self {
        case .home:
            HomeViewController()
        case .search:
            SearchViewController()
        case .purchase:
            PurchaseViewController()
        case .profile:
            MyPageViewController()
        }
    }        
}
