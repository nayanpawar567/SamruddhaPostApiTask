//
//  ApiManager.swift
//  PostApiSamrudh
//
//  Created by Nayan Pawar on 10/03/23.
//

import Foundation
import Alamofire

class ApiManager {
    
    static let shared = ApiManager()
    private init() {}
    
    func fetchData(comp: @escaping (Basemodel?, String?)->Void) {
        let url = "http://devchem.chemistryforever.com/api/Practical/LikeProfilesList"
        let params = ["page":"1"]
        
        AF.request(url, method: .post, parameters: params).response { responce in
            switch responce.result {
            case .success(let data) :
                guard let data else { return }
                do {
                    let decodedData = try JSONDecoder().decode(Basemodel.self, from: data)
                    comp(decodedData,nil)
                } catch  {
                    comp(nil,error.localizedDescription)
                }
            case .failure(let error) :
                comp(nil,error.localizedDescription)
            }
        }
    }
}
