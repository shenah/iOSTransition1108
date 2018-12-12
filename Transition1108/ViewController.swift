//
//  ViewController.swift
//  Transition1108
//
//  Created by 503-03 on 2018. 11. 8..
//  Copyright © 2018년 shenah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //하위 뷰 컨트롤러에서 넘겨받는 프로퍼티
    var name : String!

    @IBOutlet weak var lblFirst: UILabel!
    //세그웨이로 이동한 페이지에서 돌아 올때 호출되는 메소드
    @IBAction func returned(segue : UIStoryboardSegue){
        let alert = UIAlertController.init(title: "세그웨니", message: "세그웨이를 이용한 돌아오기", preferredStyle: .alert)
        
        //대화상자에 추가할 버튼
        let ok = UIAlertAction.init(title: "확인", style: .default, handler: nil)
        let cancel = UIAlertAction.init(title: "취소", style: .cancel)
        
        //버튼 추가
        alert.addAction(ok)
        alert.addAction(cancel)
        
        //화면에 출력
        self.present(alert, animated: true)
    }
    
    @IBAction func moveNext(_ sender: Any) {
        
        // 스토리보드에 만든 ViewController 인스턴스 생성을 위해서 Storyboard 인스턴스 생성
        let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        
        // 만든 ViewController 인스턴스 생성
        let subViewController = storyboard.instantiateViewController(withIdentifier: "SubViewController") as! subViewController
        subViewController.data = "첫번째 뷰 컨트롤러에서 넘겨준 데이터"
        //애니메이션 적용
        subViewController.modalTransitionStyle = .flipHorizontal
        
        //화면 출력
        self.present(subViewController, animated: true)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        //이 메소드는 View를 메모리에 로딩할 때 호출되기 때문에 화면 전환 시 호출 안됩니다.
        //lblFirst.text = name
        
    }
    
    //화면 drawing 할 때 호출됩니다.
    override func viewWillAppear(_ animated: Bool) {
        if name != nil{
            lblFirst.text = name
        }
    }

}

