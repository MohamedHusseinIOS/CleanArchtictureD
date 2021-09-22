//
//  CharactersGateway.swift
//  CleanArchtectureD
//
//  Created by Admin on 22/09/2021.
//

import RxSwift

struct CharactersGateway: CharactersGatewayType {
    
    func getCharacters() -> Observable<[CharacterModel]> {
        return CharactersRouter.characters.Request(model: CharacterModel.self)
    }
    
    func getSpacificCharacter(id: String) -> Observable<CharacterModel> {
        return CharactersRouter.spacificCharacter(id: id).Request(model: CharacterModel.self).map({$0.first!})
    }
    
}
