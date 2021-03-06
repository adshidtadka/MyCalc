//
//  ResultViewController.swift
//  MyCalc
//
//  Created by Sawa Takaaki on 2018/10/21.
//  Copyright © 2018 Sawa Takaaki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 最初の画面で入力された金額
    var price:Int = 0
    
    // 2番目の画面で入力されたば割引率
    var percent: Int = 0
    
    // 計算結果を表示するフィールド
    @IBOutlet weak var resultField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // 割引率を算出する
        let percentValue = Float(percent) / 100
        
        // 割引額を算出する
        let waribikiPrice = Float(price) * percentValue
        
        // 割引後の価格を算出する
        let percentOffPrice = price - Int(waribikiPrice)
        
        // 結果を表示する
        resultField.text = "\(percentOffPrice)"
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
