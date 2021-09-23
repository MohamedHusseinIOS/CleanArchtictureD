//
//  File.swift
//  CleanArchtectureD
//
//  Created by Admin on 23/09/2021.
//

import Foundation

struct GettingSpacificCharacterUseCase: GettingSpacificCharacterUseCaseType {
    var gateway: CharactersGateway {
        return CharactersGateway()
    }
}
