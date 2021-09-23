//
//  CharactersUseCase.swift
//  CleanArchtectureD
//
//  Created by Admin on 23/09/2021.
//

import RxSwift

protocol GettingCharactersUseCaseType: ErrorHandler {
    var gateway: CharactersGateway { get }
    func getCharacters() -> Observable<[CharacterEntity]>
}

extension GettingCharactersUseCaseType {
    func getCharacters() -> Observable<[CharacterEntity]> {
        
       return handleError(observable: gateway.getCharacters()).map({ (characterModels) in
            characterModels.map({ (characterModel) in
                CharacterEntity(charID: characterModel.charID,
                                name: characterModel.name,
                                birthday: characterModel.birthday,
                                img: characterModel.img,
                                status: characterModel.status,
                                nickname: characterModel.nickname)
            })
        })
    }
}

