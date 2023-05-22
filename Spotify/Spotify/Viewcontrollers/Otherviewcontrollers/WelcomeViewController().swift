//
//  WelcomeViewController().swift
//  Spotify
//
//  Created by Powerplay on 22/05/23.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    
    private var signInButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Sign In", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .white
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.black.cgColor
        btn.layer.cornerRadius = 4
        btn.addTarget(WelcomeViewController.self, action: #selector(didTapSignIn), for: .touchUpInside)
        return btn
    }()
    
    @objc private func didTapSignIn() {
        print("sign in...")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Spotify"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        /// Why this is required when the above functions well alone
        navigationItem.largeTitleDisplayMode = .always
    }
    
    private func addViews() {
        
    }
    
    private func configureLayouts() {
        
    }
}
