//
//  SlideViewController.swift
//  tiffinbox
//
//  Created by Mahesh on 07/01/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class SideViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var top_view: UIView!
    @IBOutlet weak var side_button: UIButton!
    @IBOutlet weak var side_view: UIView!
    @IBOutlet weak var side_tblview: UITableView!

      var arrdata = ["uSERNAME","eMAIL","eDUCATION","mOBILE","lOGOUT"]
      var arrimg = [#imageLiteral(resourceName: "offer"),#imageLiteral(resourceName: "notification"),#imageLiteral(resourceName: "setting"),#imageLiteral(resourceName: "about"),#imageLiteral(resourceName: "help")]
    
      var isSideViewOpen: Bool = false
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return arrdata.count
      }
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell:SideTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SideTableViewCell
          cell.side_img.image = arrimg[indexPath.row]
          cell.side_lbl.text = arrdata[indexPath.row]
          return cell
      }
      
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          if indexPath.row == 1{
              let uname:MenuBarViewController = self.storyboard?.instantiateViewController(withIdentifier: "uname") as! MenuBarViewController
              self.navigationController?.pushViewController(uname, animated: true)
          }//username
      }
      override func viewDidLoad() {
          super.viewDidLoad()
          side_view.isHidden = true
          side_tblview.backgroundColor = UIColor.groupTableViewBackground
          isSideViewOpen = false
      }

    
      @IBAction func btnmenu(_ sender: UIButton) {
          
          side_tblview.isHidden = false
          side_view.isHidden = false
          //self.view.bringSubview(toFront: side_view)
          if !isSideViewOpen{
              isSideViewOpen = true//0
              side_view.frame = CGRect(x: 0, y: 88, width: 0, height: 499)
              side_tblview.frame = CGRect(x: 0, y: 0, width: 0, height: 499)
              UIView.setAnimationDuration(0.3)
              UIView.setAnimationDelegate(self)
              UIView.beginAnimations("TableAnimation", context: nil)//1
              side_view.frame = CGRect(x: 0, y: 88, width: 259, height: 499)
              side_tblview.frame = CGRect(x: 0, y: 0, width: 259, height: 499)
              UIView.commitAnimations()
              
          }else{
              side_tblview.isHidden = true
              side_view.isHidden = true
              isSideViewOpen = false
              side_view.frame = CGRect(x: 0, y: 88, width: 259, height: 499)
              side_tblview.frame = CGRect(x: 0, y: 0, width: 259, height: 499)
              UIView.setAnimationDuration(0.3)
              UIView.setAnimationDelegate(self)
              UIView.beginAnimations("TableAnimation", context: nil)
              side_view.frame = CGRect(x: 0, y: 88, width: 0, height: 499)
              side_tblview.frame = CGRect(x: 0, y: 0, width: 0, height: 499)
              UIView.commitAnimations()
          }
          
          
          
          
          
          
          
          
      }
}
