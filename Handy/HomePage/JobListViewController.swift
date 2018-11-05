//
//  JobListViewController.swift
//  Handy
//
//  Created by hongjian lin on 11/5/18.
//  Copyright © 2018 com.hongjian. All rights reserved.
//

import UIKit

class JobListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionView: UICollectionView!
    
    var viewModel: JobListViewModel! {
        didSet {
            refreshView()
        }
    }
    
    func refreshView() {
        collectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        viewModel = JobListViewModel()
    }
    
    func registerCell() {
        self.collectionView.register(UINib(nibName: EnterInfoCell.identifier, bundle: nil), forCellWithReuseIdentifier: EnterInfoCell.identifier)
        self.collectionView.register(UINib(nibName: SingleButtonCell.identifier, bundle: nil), forCellWithReuseIdentifier: SingleButtonCell.identifier)
        collectionView.setCollectionViewLayout(UICollectionViewFlowLayout.init(), animated: false)
    }
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return viewModel.numberOfSections
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfRows(section: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EnterInfoCell.identifier, for: indexPath) as! EnterInfoCell
            return cell
        
            
        default:
            return UICollectionViewCell()
        }
        
        
    }
    
    // MARK: UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width, height: 100)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
