//
//  ViewController.swift
//  NKEnviornments
//
//  Created by Nishant Kumbhare on 02/12/21.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .systemTeal
        self.checkEnviornemnt()
    }
    
    private func checkEnviornemnt() {
        #if DEBUG
        print("Under Debug")
        #elseif STAGING
        print("Under Staging")
        #endif
        
        guard let apiKey = NKConfigurations.getValueFor(.apiKey),
                let baseURL = NKConfigurations.getValueFor(.baseURL) else { return }
        print(apiKey)
        print(baseURL)
    }


}

