//
//  SideMenuViewController.swift
//  tiffinbox
//
//  Created by Mahesh on 10/01/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let title_arr = ["Home","About Us","Help & Question","Logout"]
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Hide_Menu()
    }
    
    func Hide_Menu()  {
                
        UIView.animate(withDuration: 0.3, animations: { ()->Void in
            self.navigationController?.navigationBar.isHidden = false
            self.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 0, width:  UIScreen.main.bounds.size.width, height:  UIScreen.main.bounds.size.height)
        }) { (finished) in
            
            self.view.removeFromSuperview()
        }
        AppDelegate.Manu_Bool = true

    }
    override func viewWillAppear(_ animated: Bool) {
        tblview.delegate = self
        tblview.dataSource = self
        tblview.reloadData()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        }else{
            return 4
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0 {
           // let identity = tableView.register(ProfileTableViewCell.self, forCellReuseIdentifier: "ProfileTableViewCell")
           
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
            

            cell.profileimage.clipsToBounds = true
            cell.profileimage.layer.cornerRadius =  10//cell.profileImage.frame.size.height/2//67
            cell.profileimage.layer.borderWidth = 2.0
            cell.profileimage.layer.borderColor = UIColor.purple.cgColor
            cell.profileimage.image = UIImage(named: "Dominos.jpg")
            cell.emaillabel.text = "maheshpra410@gmail.com"
            cell.profileimage.sizeToFit()
            cell.emaillabel.sizeToFit()
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
            cell.lbl_title.text = title_arr[indexPath.row]
            return cell
        }

        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            print(title_arr[indexPath.row])
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.0
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 255.0
        }else{
            return 68.0
        }
    }
    
    @IBOutlet weak var tblview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
