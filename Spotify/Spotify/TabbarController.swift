//
//  TabbarController.swift
//  Spotify
//
//  Created by Powerplay on 22/05/23.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let vcHome = HomeViewController()
        let vcSrch = SearchViewController()
        let vcLib = LibraryViewcontroller()
        
        vcHome.title = "Browse"
        vcSrch.title = "Search"
        vcLib.title = "Library"
        
        vcHome.navigationItem.largeTitleDisplayMode = .always
        vcSrch.navigationItem.largeTitleDisplayMode = .always
        vcLib.navigationItem.largeTitleDisplayMode = .always
        
        let navHome = UINavigationController(rootViewController: vcHome)
        let navSrch = UINavigationController(rootViewController: vcSrch)
        let navLib = UINavigationController(rootViewController: vcLib)
        
        navHome.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        navSrch.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        navLib.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)
        
        navHome.navigationBar.prefersLargeTitles = true
        navSrch.navigationBar.prefersLargeTitles = true
        navLib.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navHome, navSrch, navLib], animated: false)
    }
    
}

