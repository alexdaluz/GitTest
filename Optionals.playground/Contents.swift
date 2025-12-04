import UIKit

// optionals
var spouseName: String?
spouseName = nil
print(spouseName ?? <#default value#>)

//optional binding
if let spouse = spouseName {
    let greeting = "Hello, " + spouse
print(greeting)
}
