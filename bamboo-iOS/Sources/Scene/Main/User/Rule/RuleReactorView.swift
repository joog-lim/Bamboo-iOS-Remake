import Foundation
import ReactorKit
import RxSwift
import RxRelay
import RxFlow

final class RuleReactor: Reactor ,Stepper{
    
    var steps: PublishRelay<Step> = .init()
    private let disposeBag: DisposeBag = .init()
    
    //MARK: - Reactor
    enum Action {
        case viewDidLoad
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
extension RuleReactor {
    func mutate(action: Action) -> Observable<Mutation> {
         switch action {
         case .viewDidLoad:
             
             return.empty()
         }
    }
}

//MARK: - reduce
extension RuleReactor {
    func reduce(state: State, mutation: Mutation) -> State {
        let newState = state
        // switch mutation {
        // }
        return newState
    }
}
