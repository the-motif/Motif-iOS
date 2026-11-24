//
//  TabBarController.swift
//  Motif-iOS
//
//  Created by dev on 11/24/26.
//

import UIKit

import Then

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
        configureTabBar()
    }
    
    func select(_ tab: TabType) {
        guard let index = TabType.allCases.firstIndex(of: tab) else { return }
        selectedIndex = index
    }
    
    private func configureViewControllers() {
        viewControllers = TabType.allCases.map(makeNavController)
    }
    
    private func makeNavController(_ tabType: TabType) -> UIViewController {
        let nav = UINavigationController(rootViewController: tabType.makeViewController())
        nav.tabBarItem.title = tabType.title
        nav.tabBarItem.image = tabType.icon
        return nav
    }
    
    private func configureTabBar() {
        tabBar.tintColor = AppColor.Brand.blue
        
        if #available(iOS 26, *) {
            return
        }
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = AppColor.Surface.card

        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
    
}
