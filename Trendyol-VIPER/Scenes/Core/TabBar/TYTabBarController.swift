//
//  TYTabBarController.swift
//  Trendyol-VIPER
//
//  Created by Emir Alkal on 17.01.2023.
//

import UIKit

/// Initial controller for App
final class TYTabBarController: UITabBarController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        configureAppearance()
    }
    
    private func configureAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()

        UITabBar.appearance().scrollEdgeAppearance = appearance
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().tintColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        setUpViewControllers()
    }
    
    private func setUpViewControllers() {
        let viewControllers = [
            TYHomeFeedViewController(),
            TYTrendyolGoViewController(),
            TYFavoritesViewController(),
            TYBasketViewController(),
            TYAccountViewController()
        ]
        
        let titles = [
            "Anasayfa",
            "Trendyol Go",
            "Favorilerim",
            "Sepetim",
            "Hesabım"
        ]
        
        for idx in 0..<viewControllers.count {
            viewControllers[idx].tabBarItem.title = titles[idx]
        }
        
        setViewControllers(viewControllers, animated: false)
    }
}
