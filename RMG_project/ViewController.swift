//
//  ViewController.swift
//  RMG_project
//
//  Created by 유명규 on 11/28/24.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsd: UILabel!
    @IBOutlet weak var txtMoney: UITextField!
    @IBOutlet weak var txtEur: UILabel!
    @IBOutlet weak var txtJpy: UILabel!

    @IBAction func calc(_ sender: UIButton) {
        // 입력된 금액을 Double로 변환
        guard let moneyText = txtMoney.text, let money = Double(moneyText) else {
            // 입력값이 유효하지 않을 경우 처리
            txtUsd.text = "유효한 금액을 입력하세요."
            txtEur.text = ""
            txtJpy.text = ""
            return
        }
        
        // 환산 계산
        let usd = money * 0.00075  // 예시 환율
        let eur = money * 0.0007    // 예시 환율
        let jpy = money * 0.1       // 예시 환율
        
        // 결과를 문자열로 변환하고 단위 추가
        txtUsd.text = String(format: "%.2f 달러", usd)
        txtEur.text = String(format: "%.2f 유로", eur)
        txtJpy.text = String(format: "%.2f 엔", jpy)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
