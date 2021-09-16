//
//  ViewController.swift
//  UIdesign
//
//  Created by Apple on 26/05/2021 .
//

import UIKit

class ViewController: UIViewController {

 //   var progss : ProgressBarView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         //   view.addSubview(ProgressBarView().progressView)
  //      ProgressBarView().progressView.frame = CGRect(x: 10, y: 200, width: view.frame.size.width - 10, height: 30)
//self.progss?.progressView.setProgress(2, animated: true)
 //       ProgressBarView().progressView.setProgress(2, animated: true)
     
    }

    override func viewWillAppear(_ animated: Bool) {
        view.addSubview(ProgressBarView())
//        ProgressBarView().progressView.frame = CGRect(x: 10, y: 100, width: view.frame.size.width - 20, height: 20)
//        ProgressBarView().progressView.setProgress(2, animated: true)
   }


}

