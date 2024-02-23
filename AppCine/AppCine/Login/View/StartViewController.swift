//
//  StartViewController.swift
//  AppCine
//
//  Created by Luis De La Rosa on 01/02/24.
//

import UIKit
import Lottie

class StartViewController: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var animationView: LottieAnimationView!
    @IBOutlet weak var animationWelcome: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.lblTitle.text = "Start.Lbl.Title".localized()
        self.configureLottie()

    }

    func configureLottie() {
        animationView.backgroundColor = .clear
        animationView.loopMode = .loop
        animationView.play()
        
        animationWelcome.backgroundColor = .clear
        animationWelcome.loopMode = .loop
        animationWelcome.play()
    }

    @IBAction func btnLoginTap(_ sender: Any) {
        
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let vc = stb.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    @IBAction func btnLogoutTap(_ sender: Any) {
        
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let vc = stb.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

