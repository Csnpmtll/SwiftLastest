import Foundation

class ChecklistItem: NSObject, Codable {
  var text = ""
  var checked = false
  var dueDate = Date()
  var shouldRemind = false
  var itemID = -1
  func toggleChecked() {
    checked = !checked
  }
  override init() {
    super.init()
    itemID = DataModel.nextChecklistItemID()
  }
}
