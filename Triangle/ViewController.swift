//
//  ViewController.swift
//  Triangle
//
//  Created by Kenton Duprey on 1/31/22.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var textBase: UITextField!
	@IBOutlet weak var textHeight: UITextField!
	@IBOutlet weak var area: UILabel!


	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	@IBAction func calculate(_ sender: Any) {
		
		let base = (textBase.text! as NSString).floatValue
		let height = (textHeight.text! as NSString).floatValue
		
		area.text = String(format: "%.02f", calculateArea(base: base, height: height))
		}
	
	
	func calculateArea(base: Float, height: Float) -> Float {
		let area = 0.5 * base * height
		return area
	}
	
	@IBAction func clear(_ sender: Any) {
		textBase.text = ""
		textHeight.text = ""
		area.text = "0.0"
	}
	


}

