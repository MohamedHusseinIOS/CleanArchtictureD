//
//  GettingCharactersUseCase.swift
//  CleanArchtectureD
//
//  Created by Admin on 23/09/2021.
//

import Foundation

struct GettingCharactersUseCase: GettingCharactersUseCaseType {
    var gateway: CharactersGateway {
        return CharactersGateway()
    }
}
