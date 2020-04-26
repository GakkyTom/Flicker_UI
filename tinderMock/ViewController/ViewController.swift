//
//  ViewController.swift
//  tinderMock
//
//  Created by 板垣智也 on 2020/04/20.
//  Copyright © 2020 板垣智也. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var findLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupButtonImage()
    }
    
    /**
     * InitialSetup
     */
    
    private func setupView() {
        bgImage.alpha = 0
        titleLabel.alpha = 0
        descLabel.alpha = 0
        goButton.alpha = 0
        findLabel.alpha = 0
    }
    
    // setupButton
    private func setupButtonImage() {
        // expand the size of image to UIButton size
        goButton.imageView?.contentMode = .scaleAspectFit
        goButton.contentHorizontalAlignment = .center
        goButton.contentVerticalAlignment = .center
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.bgImage.alpha = 0.8
        }) { (true) in
            self.showTitle()
        }
    }
    
    @IBAction func tapGoButton(_ sender: Any) {
        let sb = UIStoryboard.init(name: "RateCocktail", bundle: nil)
        let rateCocktailVC = sb.instantiateViewController(withIdentifier: "RateCocktailVC") as! RateCocktailVC
        rateCocktailVC.modalPresentationStyle = .fullScreen
        rateCocktailVC.modalTransitionStyle = .crossDissolve
        self.present(rateCocktailVC, animated: true, completion: nil)
    }
    
    
    /**
     * Animation
     */
    private func showTitle() {
        UIView.animate(withDuration: 0.8, animations: {
                self.titleLabel.alpha = 1
        }) { (true) in
                self.showDesc()
            }
    }
    
    private func showDesc() {
        UIView.animate(withDuration: 0.8, animations: {
            self.descLabel.alpha = 1
        }) { (true) in
            self.showGoButtonAndText()
        }
    }
    private func showGoButtonAndText() {
        UIView.animate(withDuration: 0.8) {
            self.goButton.alpha = 1
            self.findLabel.alpha = 1
        }
    }
}
