//
//  ErrorHandlerType.swift
//  CleanArchtectureD
//
//  Created by Admin on 23/09/2021.
//

import RxSwift

protocol ErrorHandler {
    func handleError<T>(observable: Observable<T>) -> Observable<T>
}

extension ErrorHandler {
    func handleError<T>(observable: Observable<T>) -> Observable<T> {
        return observable.catch { error in
            return convertToErrorEntity(error: error, model: T.self)
        }
    }
    
    private func convertToErrorEntity<T>(error: Error, model: T.Type) -> Observable<T> {
        Observable<T>.create { observer in
            let err = ErrorEntity(message: (error as? APIErrorModel)?.message,
                                  title: (error as? APIErrorModel)?.error)
            observer.onError(err)
            return Disposables.create()
        }
    }
}
