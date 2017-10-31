//
//  ViewController.swift
//  PAnciano02
//
//  Created by student on 29/08/2017.
//  Copyright © 2017 dlsud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let big_mac_price = 150
    let twister_price = 60
    let quarter_price = 129
    let burgermcdo_price = 35
    let applepie_price = 35
    let alaking_price = 89
    
    var big_mac_qty = 0
    var twister_qty = 0
    var quarter_qty = 0
    var burgermcdo_qty = 0
    var applepie_qty = 0
    var alaking_qty = 0
    
    var totalBigMacPrice = 0
    var totalTwisterPrice = 0
    var totalQuarterPrice = 0
    var totalBurgerMcdoPrice = 0
    var totalApplePiePrice = 0
    var totalAlaKingPrice = 0
    
    var grandTotal = 0
    
    @IBOutlet var BigMacQtyLabel: UILabel!
    @IBOutlet var TwisterQtyLabel: UILabel!
    @IBOutlet var QuarterQtyLabel: UILabel!
    @IBOutlet var BurgerMcdoQtyLabel: UILabel!
    @IBOutlet var ApplePieLabel: UILabel!
    @IBOutlet var AlaKingQtyLabel: UILabel!
    
    @IBOutlet var BigMacStepper: UIStepper!
    @IBOutlet var TwisterStepper: UIStepper!
    @IBOutlet var QuarterStepper: UIStepper!
    @IBOutlet var BurgerMcdoStepper: UIStepper!
    @IBOutlet var ApplePieStepper: UIStepper!
    @IBOutlet var AlaKingStepper: UIStepper!
    
    @IBOutlet var ReceiptArea: UILabel!
    @IBOutlet var GrandTotal_Field: UILabel!
    
    @IBAction func BigMacOtyStepper(_ sender: Any) {
        big_mac_qty = Int(BigMacStepper.value)
        BigMacQtyLabel.text = "Qty: " + String(big_mac_qty)
    }
    @IBAction func TwiterQtyStepper(_ sender: Any) {
        twister_qty = Int(TwisterStepper.value)
        TwisterQtyLabel.text = "Qty: " + String(twister_qty)
    }
    @IBAction func QuarterQtyStepper(_ sender: Any) {
        quarter_qty = Int(QuarterStepper.value)
        QuarterQtyLabel.text = "Qty: " + String(quarter_qty)
    }
    @IBAction func BurgerQtyStepper(_ sender: Any) {
        burgermcdo_qty = Int(BurgerMcdoStepper.value)
        BurgerMcdoQtyLabel.text = "Qty: " + String(burgermcdo_qty)
    }
    @IBAction func ApplePieQtyStepper(_ sender: Any) {
        applepie_qty = Int(ApplePieStepper.value)
        ApplePieLabel.text = "Qty: " + String(applepie_qty)
    }
    @IBAction func AlaKingQtyStepper(_ sender: Any) {
        alaking_qty = Int(AlaKingStepper.value)
        AlaKingQtyLabel.text = "Qty: " + String(alaking_qty)
    }
    
    
    @IBAction func Order_Button(_ sender: Any) {
        if(big_mac_qty != 0 || twister_qty != 0 || quarter_qty != 0
            || burgermcdo_qty != 0 || applepie_qty != 0 || alaking_qty != 0){
        totalBigMacPrice = big_mac_price * big_mac_qty;
        totalTwisterPrice = twister_price * twister_qty;
        totalQuarterPrice = quarter_price * quarter_qty;
        totalBurgerMcdoPrice = burgermcdo_price * burgermcdo_qty;
        totalApplePiePrice = applepie_price * applepie_qty;
        totalAlaKingPrice = alaking_price * alaking_qty;
        
        grandTotal = totalBigMacPrice + totalTwisterPrice + totalBurgerMcdoPrice + totalQuarterPrice + totalApplePiePrice + totalAlaKingPrice
        
        GrandTotal_Field.text = "P" + String(grandTotal) + ".00"
        
        ReceiptArea.textAlignment = NSTextAlignment.right
        ReceiptArea.text = "Welcome to Mcdonald's!\n\n Orders:\nBig Mac   Qty:" + String(big_mac_qty) + "   P" + String(totalBigMacPrice) + ".00" + "\nTwister Fries   Qty:" + String(twister_qty) + "   P" + String(totalTwisterPrice) + ".00" + "\nQuarter Pounder   Qty:" + String(quarter_qty) + "   P" + String(totalQuarterPrice) + ".00" + "\nBurger Mcdo   Qty:" + String(burgermcdo_qty) + "   P" + String(totalBurgerMcdoPrice) + ".00" + "\nApple Pie   Qty:" + String(applepie_qty) + "   P" + String(totalApplePiePrice) + ".00" + "\nChicken Ala King   Qty:" + String(alaking_qty) + "   P" + String(totalAlaKingPrice) + ".00"
        }
        else {
            ReceiptArea.textAlignment = NSTextAlignment.center
            ReceiptArea.text = "PLEASE PLACE AN ORDER!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

