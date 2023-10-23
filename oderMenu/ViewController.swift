//
//  ViewController.swift
//  oderMenu
//
//  Created by Timmy on 2023/10/17.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countLabel1: UILabel!
    @IBOutlet weak var countLabel2: UILabel!
    @IBOutlet weak var countLabel3: UILabel!
    @IBOutlet weak var countLabel4: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
       
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    // 四個變數，用於存儲stepper的當前數量
        var stepperCount1:Int=0
        var stepperCount2:Int=0
        var stepperCount3:Int=0
        var stepperCount4:Int=0
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // 計算總計
    func calculate () {
        var total = 0
        // 使用特定公式計算總計值
        total = 180 * stepperCount1 + 320 * stepperCount2 + 250 * stepperCount3 + 250 * stepperCount4
        // 將計算結果更新到totalLabel中
        totalLabel.text = "\(total)"
    }


    @IBAction func stepper1(_ sender: UIStepper) {
        stepperCount1 = Int(sender.value)
        countLabel1.text = "\(stepperCount1)"
        calculate ()
    }
    
    @IBAction func stepper2(_ sender: UIStepper) {
        stepperCount2 = Int(sender.value)
        countLabel2.text = "\(stepperCount2)"// 更新countLabel1以顯示新的stepperCount1數量
        calculate ()     // 計算新的總計
    }
    
    @IBAction func stepper3(_ sender: UIStepper) {
        stepperCount3 = Int(sender.value)
        countLabel3.text = "\(stepperCount3)"
        calculate ()
        
    }
    
    
    @IBAction func stepper4(_ sender: UIStepper) {
        stepperCount4 = Int(sender.value)
        countLabel4.text = "\(stepperCount4)"
        calculate ()
    
    }
    // 重新開始按鈕的動作
    @IBAction func replay(_ sender: UIButton) {
        
        stepperCount1 = 0
        stepperCount2 = 0
        stepperCount3 = 0
        stepperCount4 = 0
        
        countLabel1.text = "0"
        countLabel2.text = "0"
        countLabel3.text = "0"
        countLabel4.text = "0"
        
        //stepper 顯示 0，並且它們的值也將變為 0。
        stepper1.value = 0
        stepper2.value = 0
        stepper3.value = 0
        stepper4.value = 0
       
        // 顯示totalLabel為零
        totalLabel.text = "0"
    }
}

