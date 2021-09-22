//
//  ApiError.swift
//  CleanArchtectureD
//
//  Created by Admin on 22/09/2021.
//

import Foundation

enum ApiError: Int {
    case BadRequest = 400
    case ServerError = 500
    case ClientSideError = 0
    case lawQuailty = 555
    case unprocessableEntity = 422
    
    var message: String{
        switch self {
        case .BadRequest:
            return "Bad request"
        case .ServerError:
            return "Internal Server Error"
        case .ClientSideError:
            return "ClientSide Error"
        case .lawQuailty:
            return "Recipe with insufficient quality to process correctly"
        case .unprocessableEntity:
            return "Couldn’t parse the recipe or extract the nutritional info"
        }
    }
    
    var title: String{
        switch self {
        case .BadRequest:
            return "Bad request"
        case .ServerError:
            return "Internal Server Error"
        case .ClientSideError:
            return "ClientSide Error"
        case .lawQuailty:
            return "law quailty"
        case .unprocessableEntity:
            return "unprocessable entity"
        }
    }
}
