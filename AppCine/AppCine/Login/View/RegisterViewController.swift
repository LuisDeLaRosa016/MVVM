//
//  RegisterViewController.swift
//  AppCine
//
//  Created by Luis De La Rosa on 14/02/24.
//

import UIKit
import Lottie
import MaterialComponents
import FirebaseAuth

class RegisterViewController: UIViewController {

    var registerViewModel: RegisterViewModel!
    
    @IBOutlet weak var animationRegistryView: LottieAnimationView!
    @IBOutlet weak var lblRegistry: UILabel!
    @IBOutlet weak var lblApps: UILabel!
    
    @IBOutlet weak var txtfMail: MDCOutlinedTextField!
    @IBOutlet weak var txtfPassword: MDCOutlinedTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerViewModel = RegisterViewModel()
        
        self.configureLottie()
        self.styleTextField()
        
        lblRegistry.text = "Registry.Lbl.Title".localized()
        lblApps.text = "Registry.Lbl.Title.Apps".localized()
        
        txtfMail.delegate = self
        txtfPassword.delegate = self
    }
    
    func configureLottie(){
        animationRegistryView.backgroundColor = .clear
        animationRegistryView.loopMode = .loop
        animationRegistryView.play()
    }
    
    func styleTextField(){
        
        TextFieldStyles.styleForm(to: txtfMail, placeHolder: "Login.Txf.Mail.Placeholder".localized(), label: "Login.Txf.Mail.Label".localized())
        TextFieldStyles.styleForm(to: txtfPassword, placeHolder: "Login.Txf.Password.Placeholder".localized(), label: "Login.Txf.Password.Label".localized())
        
    }
    
    @IBAction func btnLoginTap(_ sender: Any) {
        
        guard let email = txtfMail.text, let password = txtfPassword.text else {
            return
        }
        registerViewModel.signUp(email: email, password: password) { [weak self] result in
            guard self != nil else { return }
         
            switch result {
                
            case .success(let user):
                print("sign in is correct wiht user: \(email)")
                self!.txtfMail.text = ""
                self!.txtfPassword.text = ""
            case .failure(let error):
                print("sign in error: \(error.localizedDescription)")
                self!.txtfMail.text = ""
                self!.txtfPassword.text = ""

            }
            
        }

        
    }
    

    @IBAction func btnChangeLoginTap(_ sender: Any) {
        
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let vc = stb.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
