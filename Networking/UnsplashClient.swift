//
//  UnsplashClient.swift
//  App_AppstoreClone
//
//  Created by mac on 2018. 8. 30..
//  Copyright © 2018년 UkJin. All rights reserved.
//

import Foundation

class UnsplashClient: APIClient {
    static let baseUrl = "https://api.unsplash.com"
    static let apiKey = "35b3f51ed61a53019f35e964c5693f5726fb83c07e30e682f5c46a5a529de234"
    
    func fetch(with endpoint: UnspashEndpoint, completion: @escaping (Either<Photos>) -> Void) {
        let request = endpoint.request
        get(with: request, completion: completion)
    }
}
