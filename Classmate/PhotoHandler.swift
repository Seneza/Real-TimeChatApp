//
//  PhotoHandler.swift
//  Classmate
//
//  Created by Gaston Seneza on 7/28/17.
//  Copyright © 2017 Gaston Seneza. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions


class PhotoHandler: BaseMessageInteractionHandlerProtocol {
    func userDidTapOnFailIcon(viewModel: PhotoViewModel, failIconView: UIView) {
        print("Tap on fail")
    }
    func userDidTapOnAvatar(viewModel: PhotoViewModel) {
        print("tap on avatar")
    }
    func userDidTapOnBubble(viewModel: PhotoViewModel) {
       
        print("Tap on Bubble")
    }
    func userDidBeginLongPressOnBubble(viewModel: PhotoViewModel) {
        print("bubble long pressed")
    }
    func userDidEndLongPressOnBubble(viewModel: PhotoViewModel) {
        print("bubble ends long pressed")
    }
}
