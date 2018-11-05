import Foundation
import UIKit
import CoreData

enum StoryBoard: String {
    case main = "Main",
    manage = "Manage"
}

protocol StoryboardViewControllerFactory {
    
    func createJobListViewController() -> JobListViewController
}

class StoryboardFactory {
    let storyboard: UIStoryboard
    let context: NSManagedObjectContext
    init(storyboard: UIStoryboard, context: NSManagedObjectContext) {
        self.storyboard = storyboard
        self.context = context
    }
    static func forStoryboard(_ storyboard: StoryBoard) -> StoryboardViewControllerFactory {
        return StoryboardFactory(
            storyboard: UIStoryboard(name: storyboard.rawValue, bundle: nil),
            context: NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        )
    }
    
    static func buildStoryboard(_ storyboard: StoryBoard) -> UIStoryboard {
        return UIStoryboard(name: storyboard.rawValue, bundle: nil)
    }
}

extension StoryboardFactory: StoryboardViewControllerFactory {
    
    func createJobListViewController() -> JobListViewController {
        let nvc = storyboard.instantiateViewController(withIdentifier: "JobListViewController") as! JobListViewController
        return nvc
    }
    

}



