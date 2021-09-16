//
//  ProgressBarView.swift
//  UIdesign
//
//  Created by Apple on 16/06/2021 .
//

import UIKit

class ProgressBarView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
 */
    let progressNum: CGFloat = 0.5
    @IBInspectable var frameSize = CGRect(x: 10, y: 100, width: 300, height: 20)
    
    let backView: UIView = {
        let view = UIView()
        return view
    }()
    
    let textLabel : UILabel = {
       let label = UILabel()
        label.text = "hello"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "Halvetica", size: 20)
        label.baselineAdjustment = .alignCenters
        return label
    }()
    
    
    let progressView:UIProgressView = {
        let progressBar = UIProgressView(progressViewStyle: .default)
        progressBar.progressTintColor = .red
        progressBar.trackTintColor = .clear
        progressBar.layer.cornerRadius = 5
    
     //   progressBar.trackTintColor = .green

        return progressBar
   
    }()
    
    let yelloView:UIProgressView = {
        let yellowBar = UIProgressView(progressViewStyle: .default)
        yellowBar.progressTintColor = .yellow
        yellowBar.trackTintColor = .clear
        yellowBar.layer.cornerRadius = 5

        return yellowBar
   
    }()
    let orangeView:UIProgressView = {
        let orangeBar = UIProgressView(progressViewStyle: .default)
        orangeBar.progressTintColor = .orange
        orangeBar.trackTintColor = .clear
        orangeBar.layer.cornerRadius = 5
        return orangeBar
   
    }()
    let greenView:UIProgressView = {
        let greenBar = UIProgressView(progressViewStyle: .default)
        greenBar.progressTintColor = .green
        greenBar.trackTintColor = .clear
        greenBar.layer.cornerRadius = 5
        return greenBar
   
    }()
    
    let size = CGSize(width: 350, height: 30)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()

        addSubview(backView)
        backView.addSubview(textLabel)
        backView.addSubview(progressView)
        
        backView.addSubview(yelloView)
        backView.addSubview(greenView)
        backView.addSubview(orangeView)
        progressView.frame = CGRect(x:50, y: 100, width: 350, height: 50)

        progressView.setProgress(3, animated: true)
        progressView.progress = Float(progressNum)
   
        yelloView.frame = CGRect(x: 10, y: 110, width: 350, height: 0)
        yelloView.setProgress(3, animated: true)
        yelloView.progress = 0.9
        
        greenView.frame = CGRect(x: 10, y: 120, width: 350, height: 0)
        greenView.setProgress(3, animated: true)
        greenView.progress = 0.8
        
        orangeView.frame = CGRect(x: 10, y: 130, width: 350, height: 0)
        orangeView.setProgress(3, animated: true)
        orangeView.progress = 0.6
        
        textLabel.frame = CGRect(x: 10, y: 90, width: 40, height: 15)
        //   progressView.setProgress(2, animated: true)
        
    }
    
     func setup() {
        var firstview : UIView = {
        let lastView = UIView()
        lastView.backgroundColor = .red
     //   addSubview(lastView)
        return lastView
        }()
      addSubview(firstview)
        
        let textlabel : UILabel = {
            let label = UILabel()
            label.text = "hello"
            
            return label
        }()
        // addSubview(firstview)
        firstview.addSubview(textlabel)
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
