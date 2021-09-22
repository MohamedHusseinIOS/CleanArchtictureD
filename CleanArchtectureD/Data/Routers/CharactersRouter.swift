//
//  CharactersRouter.swift
//  CleanArchtectureD
//
//  Created by Admin on 22/09/2021.
//

import Alamofire

enum CharactersRouter: URLRequestBuilder {
    
    
    case characters
    case spacificCharacter(id: String)
    
    var baseURL: String {
        return ApiURL.BaseUrl.rawValue
    }
    
    var path: String{
        switch self {
            case .characters:
                return ApiURL.Characters.rawValue
            case .spacificCharacter(let id):
                return "\(ApiURL.Characters.rawValue)/\(id)"
        }
    }
    
    var header: HTTPHeaders {
        return ["Content-Type": "application/json"]
    }
    
    var parameters: Parameters? {
        switch self {
            case .spacificCharacter( _):
                return nil
            case .characters:
                return nil
        }
    }
    
    var method: HTTPMethod {
        return .get
    }

}
