//
//  ViewController.swift
//  Transition1108
//
//  Created by 503-16 on 2018. 11. 8..
//  Copyright © 2018년 the. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //하위 뷰 컨트롤러부터 넘겨받을 데이터
    var name : String!

    @IBOutlet weak var lblFirst: UILabel!
    @IBAction func returned(segue : UIStoryboardSegue){
        //대화상자를 생성
        let alert = UIAlertController.init(title: "세그웨이", message: "세그웨이를 이용한 돌아오기", preferredStyle: .alert)
        //대화상자에 추가할 버튼
        let ok = UIAlertAction.init(title: "확인", style: .default, handler: nil)
        //대화상자에 버튼 추가
        alert.addAction(ok)
        //화면에 출력
        self.present(alert, animated : true)
    }
    
    @IBAction func moveNext(_ sender: Any) {
        //스토리보드에 만든 ViewController 인스턴스 생성을 위해서 Storyboard 인스턴스 생성
        let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        //두번째 뷰 컨트롤러 인스턴스 생성
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        //데이터 넘겨주기
        secondViewController.data = "사랑한다 민수야"
        //애니메이션 적용
        secondViewController.modalTransitionStyle = .flipHorizontal
        //화면에 출력
        self.present(secondViewController, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        //상위 클래스의 메소드 호출
        super.viewWillAppear(animated)
        if name != nil{
            lblFirst.text = name
        }
    }
    
    //세그웨이를 이용해서 이동할 때 호출되는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //이동할 뷰 컨트롤러에 대한 참조를 생성
        let dest = segue.destination as! SecondViewController
        dest.data = "오줌좀 잘싸주라 레이야.ㅠㅠ"
    }
    
}

