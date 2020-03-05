//
//  ViewController.swift
//  TableCRUD
//
//  Created by 503 on 2020/03/05.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t_name: UITextField!
    
    @IBOutlet weak var t_gender: UITextField!
    
    @IBOutlet weak var t_age: UITextField!
    
    @IBAction func btnClick(_ sender: Any) {
        regist()
    }
    
    //테이블리스트의 레퍼런스
    var memberListController:MemberListController!
    
    //회원1명을 담을 구조체 인스턴스 생성후 배열에 탑재
    func regist(){
        var name = t_name.text!
        var gender = t_gender.text!
        var age = Int(t_age.text!)!
        //구조체 생성
        let member = Member(name: name, gender: gender, age: age)
        
        //배열에 담기
        memberListController.memberArray.append(member)
        
        print("누적회원수는 ", memberListController.memberArray.count)
        
        //테이블뷰가 등장할때마다 데이터 갱신
        memberListController.tableView.reloadData()
        
        //등록 후 목록, 프로그래밍 적으로 이동하기
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //뷰가 보여질 때 한번 해놓자ㅓ
        //나중에 계속 사용가능
        memberListController = self.navigationController?.viewControllers[0] as! MemberListController
    }

 
}

