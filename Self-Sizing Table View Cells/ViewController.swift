//
//  ViewController.swift
//  Self-Sizing Table View Cells
//
//  Created by Hiếu Nguyễn on 7/26/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let dataForTableView = [("Với hơn 1000 năm văn hiến, từ thuở là kinh thành Thăng Long cho tới nay Hà Nội vẫn luôn là trung tâm văn hóa lớn nhất nước với các di tích văn hóa vật thể và phi vật thể. Vùng đất lành vốn đã sản sinh ra nền văn hóa dân gian với nhiều truyền thuyết, ca dao, tục ngữ, những vị anh hùng, danh nhân được dân gian ca ngợi và những lễ hội dân gian mang đậm màu sắc lịch sử, có tác động sâu sắc đến tinh thần của người dân.", "Hà Nội"), ("Ngay cái nhìn đầu tiên, Sài Gòn - thành phố Hồ Chí Minh đã để lại ấn tượng sâu sắc của một đô thị lớn nhất, náo nhiệt nhất và năng động nhất trong cả nước. Những phố xá đèn sáng choang, sinh hoạt và vui chơi giải trí kéo dài đến tận khuya. Những dòng xe cộ hối hả trên khắp các ngả đường như không bao giờ dứt. Dãy dãy cửa hiệu với hàng hóa phong phú đủ màu, đủ loại góp phần làm nên danh tiếng Sài Gòn - thiên đường mua sắm. Nhan nhãn những quán ăn, cửa tiệm, nhà hàng với thực đơn rất đa dạng khiến ẩm thực trở thành một cái thú không thể thiếu đối với du khách đến nơi đây.", "Sài Gòn"),("Với nhiều cảnh quan đẹp, Đà Lạt là một trong những thành phố du lịch nổi tiếng nhất của Việt Nam. Trong thời Pháp thuộc, tên tiếng Latin Dat Aliis Laetitiam Aliis Temperiem có nghĩa là “cho những người này niềm vui, cho những người khác sự mát mẻ”. Đà Lạt được mệnh danh là : thành phố hoa, thành phố tình yêu, thành phố mùa xuân, thành phố sương mù.", "Đà Lạt")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataForTableView.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.textLabel?.text = dataForTableView[indexPath.row].0
        return cell
    }

}

