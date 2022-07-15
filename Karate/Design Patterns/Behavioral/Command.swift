//
//  Command.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/14/22.
//

import Foundation
import SwiftUI

class Account {
    
    var accountName: String
    var balance: Int
    
    init(accountName: String, balance: Int) {
        self.accountName = accountName
        self.balance = balance
    }
}

protocol Command {
    
    var isComplete: Bool { get set }
    
    func execute()
}

class Deposite: Command {
    
    private var account: Account
    private var amount: Int
    var isComplete: Bool = false
    
    init(account: Account, amount: Int) {
        self.account = account
        self.amount = amount
    }
    
    func execute() {
        account.balance += amount
        isComplete = true
    }
}

class Withdraw: Command {
    
    private var account : Account
    private var amount: Int
    var isComplete: Bool = false
    
    init(account: Account, amount: Int) {
        self.account = account
        self.amount = amount
    }
    
    func execute() {
        if account.balance >= amount {
            account.balance -= amount
            isComplete = true
        } else {
            print("Not enough money")
        }
        
        
    }
}

class TransactionManager {
    

    static let shared = TransactionManager()
    private init() {}
    private var transactions: [Command] = []
    
    var pendingTransactions: [Command] {
        get {
            return self.transactions.filter { $0.isComplete == false }
        }
    }
    
    
    func addTransactions(command: Command) {
        self.transactions.append(command)
    }
    func processTranactions() {
        transactions.filter { $0.isComplete == false}.forEach { $0.execute() }
    }
}

//MARK: Implementation
/* */
