//
//  TextHandler.swift
//  Classmate
//
//  Created by Gaston Seneza on 7/10/17.
//  Copyright © 2017 Gaston Seneza. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions


class TextHandler: BaseMessageInteractionHandlerProtocol {
    func userDidTapOnFailIcon(viewModel: ViewModel, failIconView: UIView) {
        print("Tap on fail")
    }
    func userDidTapOnAvatar(viewModel: ViewModel) {
        print("tap on avatar")
    }
    func userDidTapOnBubble(viewModel: ViewModel) {
        print(viewModel.text)
        print("Tap on Bubble")
    }
    func userDidBeginLongPressOnBubble(viewModel: ViewModel) {
        print("bubble long pressed")
    }
    func userDidEndLongPressOnBubble(viewModel: ViewModel) {
        print("bubble ends long pressed")
     }
}
