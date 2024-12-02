//
//  ListViewController.swift
//  RMG_project
//
//  Created by 유명규 on 11/28/24.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var memoLabel: UILabel!
    @IBAction func addMemo(_ sender: UIButton) {
        guard let memoText = textField.text, !memoText.isEmpty else { return }
        
        // 입력된 메모를 라벨에 표시
        memoLabel.text = memoText
        
        // 텍스트 필드 초기화
        textField.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // 초기 메모 라벨 설정
        memoLabel.text = "메모가 없습니다."
        
        // 텍스트 필드의 placeholder 설정
        textField.placeholder = "메모를 입력하세요"

        // Do any additional setup after loading the view.
    }
    

}
