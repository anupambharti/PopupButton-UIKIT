//
//  ViewController.swift
//  PopupButton
//
//  Created by Anu on 18/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var popUPButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    func setupButton() {
        //MARK: Function fune setPopupButton(N
        let optionClosure = {(action: UIAction) in
        print(action.title)}
    
        popUPButton.menu = UIMenu(children : [
        UIAction(title : "Option 1", state : .on, handler: optionClosure),
        UIAction(title : "Option 2", handler: optionClosure),
        UIAction(title : "Option 3", handler: optionClosure)])
        popUPButton.showsMenuAsPrimaryAction = true
        popUPButton.changesSelectionAsPrimaryAction = true
    }

}

