//
//  DataSource.swift
//  Classmate
//
//  Created by Gaston Seneza on 7/10/17.
//  Copyright © 2017 Gaston Seneza. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class DataSource: ChatDataSourceProtocol {
    var delegate: ChatDataSourceDelegateProtocol?
    var controller = ChatItemsController()
    init(totalMessages: [ChatItemProtocol]) {
        self.controller.totalMessages = totalMessages
        self.controller.loadIntoItemsArray(messagesNeeded: min(totalMessages.count, 50))
    }
    var chatItems: [ChatItemProtocol] {
        return controller.items
    }
    
    var hasMoreNext: Bool { return false }
    var hasMorePrevious: Bool {return controller.totalMessages.count - controller.items.count > 0 }
    
    func loadNext() {
        //code
    }
    func loadPrevious() {
        controller.loadPrevious()
        self.delegate?.chatDataSourceDidUpdate(self, updateType: .pagination)
    }
    
    func addMessage(message: ChatItemProtocol) {
        self.controller.insertItem(message: message)
        self.delegate?.chatDataSourceDidUpdate(self)
    }
    
    func adjustNumberOfMessages(preferredMaxCount: Int?, focusPosition: Double, completion: (Bool) -> Void) {
        if focusPosition > 0.9 {
            self.controller.adjustWindow()
            completion(true)
        } else {  completion(false)  }
            }
    
}
