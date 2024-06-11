import Foundation

//a
// Function to display the menu
func displayMenu() {
    print("""
    Budget Tracker Menu:
    1. Add a new expense
    2. Delete an existing expense
    3. Update an expense
    4. View total expenses
    5. View remaining budget
    6. Exit
    """)
}

// Function to get user input as an integer
func getInput() -> Int {
    if let input = readLine(), let choice = Int(input) {
        return choice
    }
}

// Main budget tracker program
func budgetTracker() {
    var expenses: [String: Double] = [:]
    var budget: Double = 0.0

    print("Enter your total budget:")
    if let input = readLine(), let totalBudget = Double(input) {
        budget = totalBudget
    }

    var isRunning = true

        switch choice {
        case 1:
            // Add a new expense
            print("Enter the name of the expense:")
            if let name = readLine() {
                print("Enter the amount of the expense:")
                if let input = readLine(), let amount = Double(input) {
                    expenses[name] = amount
                    print("Expense added.")
                }
            }
        case 2:
            // Delete an existing expense
            print("Enter the name of the expense to delete:")
            if let name = readLine() {
                if expenses.removeValue(forKey: name) != nil {
                    print("Expense deleted.")
                }
            }
        case 3:
            // Update an expense
            print("Enter the name of the expense to update:")
            if let name = readLine() {
                if expenses.keys.contains(name) {
                    print("Enter the new amount of the expense:")
                    if let input = readLine(), let amount = Double(input) {
                        expenses[name] = amount
                        print("Expense updated.")
                    }
                }
            }
        case 4:
            // View total expenses
            let totalExpenses = expenses.values.reduce(0, +)
            print("Total expenses: \(totalExpenses)")
        case 5:
            // View remaining budget
            let totalExpenses = expenses.values.reduce(0, +)
            let remainingBudget = budget - totalExpenses
            print("Remaining budget: \(remainingBudget)")
        }
    }
}

// Run the budget tracker program
budgetTracker()