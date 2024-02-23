//
//  LoginViewController.swift
//  AppCine
//
//  Created by Luis De La Rosa on 02/02/24.
//

import UIKit
import FLAnimatedImage
import MaterialComponents

class LoginViewController: UIViewController {

    @IBOutlet weak var imageGif: FLAnimatedImageView!
    @IBOutlet weak var lblCredentials: UILabel!
    @IBOutlet weak var lblApps: UILabel!
    @IBOutlet weak var txfUser: MDCOutlinedTextField!
    @IBOutlet weak var tfPassword: MDCOutlinedTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.loadGif()
        self.styleTextFields()
        self.lblCredentials.text = "Login.Lbl.Title.Credentials".localized()
        self.lblApps.text = "Login.Lbl.Title.Apps".localized()
        txfUser.delegate = self
        tfPassword.delegate = self
    }
    
    func loadGif(){
        if let gifFilePath = Bundle.main.path(forResource: "AnimationLogin", ofType: "gif") {
            if let gifData = try? Data(contentsOf: URL(fileURLWithPath: gifFilePath)) {
                let animatedImage = FLAnimatedImage(animatedGIFData: gifData)
                imageGif.animatedImage = animatedImage
            }
        }
    }
    
    func styleTextFields (){
        TextFieldStyles.styleForm(to: txfUser, placeHolder: "Login.Txf.Mail.Placeholder".localized(), label: "Login.Txf.Mail.Label".localized())
        TextFieldStyles.styleForm(to: tfPassword, placeHolder: "Login.Txf.Password.Placeholder".localized(), label: "Login.Txf.Password.Label".localized())
    }
    
    @IBAction func btnChangeRegistryTap(_ sender: Any) {
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let vc = stb.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
