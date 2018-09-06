//
//  ViewController.swift
//  App_AppstoreClone
//
//  Created by mac on 2018. 8. 30..
//  Copyright © 2018년 UkJin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    let titleArr = ["컬렉션","게임","오늘의 앱"]
    let subTitleArr = ["관람차를 타보자!","쉐프 우마미","북맹 - 도서분석"]
    let viewModel = MainViewModel(client: UnsplashClient())

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewModel.showLoading = {
            if self.viewModel.isLoading {
                self.activityIndicator.startAnimating()
                self.activityIndicator.alpha = 0.0
            } else {
                self.activityIndicator.stopAnimating()
                self.activityIndicator.alpha = 1.0
            }
            
        }
        viewModel.showError = { error in
            print(error)
        }
        
        viewModel.reloadData = {
            self.collectionView.reloadData()
        }
        
        viewModel.fetchPhotos()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func prepareForDetail (segue:UIStoryboardSegue) {
        
    }


}



//Mark: CollectionView
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.cellViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! MainCollectionViewCell
        let image = viewModel.cellViewModels[indexPath.row].image
        cell.imageView.image = image
        cell.subTitleLabel.text = subTitleArr[0]
        cell.titleLabel.text = titleArr[0]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CellDetailViewController") as! CellDetailViewController
        let image = viewModel.cellViewModels[indexPath.row].image
        vc.images = image
        present(vc,animated: true,completion: nil)
        
//        performSegue(withIdentifier: "VC", sender: self)
    }

}
