
import SwiftUI

class ToDoListViewModel: NSObject, ObservableObject {
    @Published var listData: [NTVDomainTodo] = []
    
    func loadData() {
        listData = NTVRepositoryTodoRepository.findAllOrderByCreatedAtDesc()
    }
    
    func selectItem(_ item: NTVDomainTodo) {
        guard let index = listData.firstIndex(of: item) else { return }
        NTVRepositoryTodoRepository.setDoneById(item.id, done: !item.done)
        listData[index] = NTVRepositoryTodoRepository.find(byId: item.id)
    }
}
