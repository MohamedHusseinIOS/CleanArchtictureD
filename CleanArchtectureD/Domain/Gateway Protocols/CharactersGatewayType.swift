//
//  CharactersGateway.swift
//  CleanArchtectureD
//
//  Created by Admin on 22/09/2021.
//

import RxSwift

protocol CharactersGatewayType {
    func getCharacters() -> Observable<[CharacterModel]>
    func getSpacificCharacter(id: String) -> Observable<CharacterModel>
}
