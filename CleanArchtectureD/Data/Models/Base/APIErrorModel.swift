//
//  APIErrorModel.swift
//  Nutrition Analysis Demo
//
//  Created by mohamed hussein on 25/03/2021.
//

import Foundation

struct APIErrorModel: BaseModel, Error {
    let message: String?
    let error: String?
    let code: Int?
}
