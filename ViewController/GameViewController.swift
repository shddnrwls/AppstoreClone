//
//  GameViewController.swift
//  App_AppstoreClone
//
//  Created by mac on 2018. 9. 6..
//  Copyright © 2018년 UkJin. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var newGameCollectionView: UICollectionView!
    let images = [#imageLiteral(resourceName: "clashofclan"),#imageLiteral(resourceName: "Angry"),#imageLiteral(resourceName: "blackDesert")]
    let gameName = ["Clash of Clan","Angry Birds","검은 사막"]
    let intro = ["최고의 새 액션 게임!","클랜전과 함께하세요!","월드클래스 MMORPG"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension GameViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = newGameCollectionView.dequeueReusableCell(withReuseIdentifier: "NewGameCollectionViewCell", for: indexPath) as! NewGameCollectionViewCell
        cell.imageView.image = images[indexPath.row]
        cell.gameNameLabel.text = gameName[indexPath.row]
        cell.gameIntroLabel.text = intro[indexPath.row]
        return cell
    }
    
    
}
