//
//  CharacterModel.swift
//  CleanArchtectureD
//
//  Created by Admin on 22/09/2021.
//

import Foundation

struct CharacterModel: BaseModel {
    var charID: Int?
    var name, birthday: String?
    var occupation: [String]?
    var img: String?
    var status, nickname: String?
    var appearance: [Int]?
    var portrayed, category: String?
    var betterCallSaulAppearance: [Int]?
}
