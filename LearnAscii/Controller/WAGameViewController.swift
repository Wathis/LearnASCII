//
//  WAJeuViewController.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 28/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WAGameViewController: UIViewController, UITextFieldDelegate {

    let asciiTable = WARowASCII.generate()
    var isHexToTranslate = false
    var actualIndex = 0
    
    let labelQuestion = WALabelPrincipal()
    
    let labelAscii = WALabelPrincipal()
    
    let textField : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textColor = .white
        tf.font = UIFont(name: "Ubuntu-Regular", size: 18)
        tf.attributedPlaceholder = NSAttributedString(string: "Enter the answer",
                                                        attributes: [NSAttributedStringKey.foregroundColor: UIColor(red: 255, green: 255, blue: 255, alpha: 0.5)])
        return tf
    }()
    
    let underlineTextField : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(rgb: 0x394166)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        getAscii()
        textField.becomeFirstResponder()
        textField.delegate = self
        labelAscii.changeFontSize(fontSize: 25)
        view.backgroundColor = UIColor(rgb: 0x202341)
    }
    
    func getAscii() {
        actualIndex = Int(arc4random_uniform(UInt32(self.asciiTable.count - 1)))
        isHexToTranslate = arc4random_uniform(2) == 0
        if isHexToTranslate {
            labelQuestion.text = "What's the char for"
            self.labelAscii.text = asciiTable[actualIndex].getHexa()
        } else {
            labelQuestion.text = "What's the hexa for"
            self.labelAscii.text = asciiTable[actualIndex].getChar()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.isEnabled = false
        if let text = textField.text {
            if isHexToTranslate {
                if asciiTable[actualIndex - 1].getChar() == text {
                    underlineTextField.backgroundColor = UIColor(rgb: 0x6CE679)
                    _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(handleNext), userInfo: nil, repeats: false)
                } else {
                    underlineTextField.backgroundColor = UIColor(rgb: 0xE64F4F)
                    labelQuestion.text = "The answer was : \(asciiTable[actualIndex - 1].getChar())"
                    _ = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(handleNext), userInfo: nil, repeats: false)
                }
            } else {
                let hexa = asciiTable[actualIndex - 1].getHexa()
                if hexa == text {
                    underlineTextField.backgroundColor = UIColor(rgb: 0x6CE679)
                    _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(handleNext), userInfo: nil, repeats: false)
                } else {
                    underlineTextField.backgroundColor = UIColor(rgb: 0xE64F4F)
                    labelQuestion.text = "The answer was : \(hexa)"
                    _ = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(handleNext), userInfo: nil, repeats: false)
                }
            }
        }
        return false
    }
    
    @objc func handleNext() {
        textField.text = ""
        textField.becomeFirstResponder()
        underlineTextField.backgroundColor = UIColor(rgb: 0x394166)
        textField.isEnabled = true
        getAscii()
    }
    
    func setupViews() {
        self.view.addSubviews([textField,labelQuestion,underlineTextField,labelAscii])
        NSLayoutConstraint.activate([
            textField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 8/10),
            textField.heightAnchor.constraint(equalToConstant: 50),
            textField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            underlineTextField.topAnchor.constraint(equalTo: textField.bottomAnchor),
            underlineTextField.widthAnchor.constraint(equalTo: self.textField.widthAnchor),
            underlineTextField.heightAnchor.constraint(equalToConstant: 5),
            underlineTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),

            labelAscii.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 8/10),
            labelAscii.heightAnchor.constraint(equalToConstant: 50),
            labelAscii.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            labelAscii.centerYAnchor.constraint(equalTo: self.view.centerYAnchor,constant: -100),
            
            labelQuestion.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 8/10),
            labelQuestion.heightAnchor.constraint(equalToConstant: 50),
            labelQuestion.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            labelQuestion.centerYAnchor.constraint(equalTo: self.labelAscii.centerYAnchor,constant: -100)

        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
