//
//  ViewController.swift
//  Navigation
//
//  Created by 503-16 on 2018. 11. 8..
//  Copyright © 2018년 the. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func goDetail(_ sender: Any) {
        let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        //데이터 넘겨주기
        detailViewController.category = "일식"
        //화면에 푸시
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    //세그웨이를 이용해서 이동할 때 호출되는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //이동할 뷰 컨트롤러에 대한 참조를 가져오기
        let detailViewController = segue.destination as! DetailViewController
        //데이터를 설정
        detailViewController.category = "고기"
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

