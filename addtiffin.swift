//
//  addtiffin.swift
//  tiffinbox
//
//  Created by Mahesh on 25/01/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit
var commClassObj = common()
class addTiffine: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    var btn = UIButton()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgarr.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.size.width/2)-27, height: 180)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! collectioncellForAddTiffin
        cell.img.image = UIImage(named: imgarr[indexPath.row])
        cell.layer.shadowColor = #colorLiteral(red: 0.7021864524, green: 0.291780205, blue: 0.2337880161, alpha: 1)
        cell.layer.shadowOffset = CGSize(width: 10, height: 10)
        cell.layer.shadowOpacity = 0.5
        cell.layer.shadowRadius = 5
        return cell
    }
    
let imgarr = ["blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg","blur3.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBtn()
        tabBarController?.tabBar.isHidden = false
        //commClassObj.readplist(fieldname: String)
    }
    
    func createBtn() {
        btn.frame = CGRect(x: self.view.frame.size.width-100, y: self.view.frame.size.height-200 , width: 70, height: 70)
        btn.layer.cornerRadius = 35
        btn.setAttributedTitle(NSAttributedString(string: "+", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.0431372549, green: 0.7215686275, blue: 0.7294117647, alpha: 1),NSAttributedString.Key.font:UIFont(name: "Arial", size: 50)!]), for: .normal)
        btn.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        btn.layer.borderColor = #colorLiteral(red: 0.0431372549, green: 0.7215686275, blue: 0.7294117647, alpha: 1)
        btn.layer.borderWidth = 4
        btn.addTarget(self, action: #selector(self.click), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(btn)
        btn.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
        btn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 70).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        
    }
    
    @objc func click(sender: UIButton){
        navigation(identifier: "tiffindetail1")
    }
   
}

