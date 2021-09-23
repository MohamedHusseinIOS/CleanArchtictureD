//
//  GettingSpacificCharacterUseCaseType.swift
//  CleanArchtectureD
//
//  Created by Admin on 23/09/2021.
//

import RxSwift

protocol GettingSpacificCharacterUseCaseType: ErrorHandler {
    var gateway: CharactersGateway { get }
    func getCharacter(id: String) -> Observable<CharacterEntity>
}

extension GettingSpacificCharacterUseCaseType {
    func getCharacter(id: String) -> Observable<CharacterEntity> {
        return handleError(observable: gateway.getSpacificCharacter(id: id)).map({(characterModel) in
            CharacterEntity(charID: characterModel.charID,
                            name: characterModel.name,
                            birthday: characterModel.birthday,
                            img: characterModel.img,
                            status: characterModel.status,
                            nickname: characterModel.nickname)
        })
    }
}
