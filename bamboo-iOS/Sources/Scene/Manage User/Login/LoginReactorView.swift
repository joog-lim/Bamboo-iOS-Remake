//
//  LoginReactorView.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/30.
//

import Foundation
import ReactorKit
import RxSwift

final class LoginReactor: Reactor {
    
    private let disposeBag: DisposeBag = .init()
    
    //MARK: - Reactor
    enum Action {
        // actiom cases
    }
    
    enum Mutation {
        // mutation cases
    }
    
    struct State {
        //state
    }
    
    let initialState: State
    
    init() {
        self.initialState = State()
    }

}

//MARK: - Mutate
extension LoginReactor {
    func mutate(action: Action) -> Observable<Mutation> {
         switch action {
             
         }
    }
}

//MARK: - reduce
extension LoginReactor {
    func reduce(state: State, mutation: Mutation) -> State {
        let newState = state
        // switch mutation {
        // }
        return newState
    }
}
