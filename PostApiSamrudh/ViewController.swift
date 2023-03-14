//
//  ViewController.swift
//  PostApiSamrudh
//
//  Created by Nayan Pawar on 10/03/23.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var profileList:[ProfileData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apiCall()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func apiCall() {
       
        ApiManager.shared.fetchData { Data, error in
            print(Data)
            guard let profileData = Data?.profileData else { return }
            self.profileList.append(contentsOf: profileData)
            
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
}


extension ViewController:UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as? CustomCell else { fatalError()}
        
        let url = profileList[indexPath.row].profile_image_crop!
        cell.img.kf.setImage(with: URL(string: url))
        cell.profileName.text = profileList[indexPath.row].name
        
        
        cell.img.kf.setImage(
                        with: URL(string: url),
                        placeholder: UIImage(systemName: "person.fill"))
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2 - 15
        let height = collectionView.frame.height / 3 - 15
        return CGSize(width: width , height: height)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let data = profileList[indexPath.row]
        performSegue(withIdentifier: "toNext", sender: data )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.profileData = (sender as! ProfileData)
        }
    }
}

extension ViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
    }
    
}

