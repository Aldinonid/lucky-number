//
//  LuckyNumberViewController.swift
//  iTogel
//
//  Created by Aldino Efendi on 05/04/3 R.
//

import UIKit

class LuckyNumberViewController: UIViewController {

	@IBOutlet weak var writeLabel: UILabel!
	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var magicButton: UIButton!
	@IBOutlet weak var luckyNameLabel: UILabel!
	@IBOutlet weak var luckyNumberLabel: UILabel!
	@IBOutlet weak var boxImage: UIImageView!
	
	var hasTheMagicHappen: Bool = false
	
	override func viewDidLoad() {
			super.viewDidLoad()
			luckyNumberLabel.text = ""
    }

	@IBAction func doMagicThing(_ sender: Any) {
		
		if hasTheMagicHappen {
			
			nameTextField.text = ""
			magicButton.setTitle("Do The Magic!", for: .normal)
			luckyNumberLabel.text = ""
			boxImage.image = UIImage(named: "box")
			hasTheMagicHappen = false
			
		} else {
			
			let userName = (nameTextField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
			
			if userName == "" {
				writeLabel.textColor = UIColor.red
			} else {
				var nameLength = 0
				nameLength = userName.count
				nameLength = Int.random(in: nameLength...31)
				luckyNameLabel.text = "Hi \(String(describing: userName)) \n \(String(describing: luckyNameLabel.text!))"
				luckyNumberLabel.text = "\(nameLength)"
				boxImage.image = UIImage(named: "magic")
				magicButton.setTitle("Reset", for: .normal)
				hasTheMagicHappen = true
				
			}
			
		}
	}
	
}
