//
//  Page.swift
//  InteractiveStory
//
//  Created by Nate Bird on 6/14/17.
//  Copyright © 2017 Birdhouse. All rights reserved.
//

import Foundation

class Page {
    let story: Story

    // Creates and anoynmous struct
    typealias Choice = (title: String, page: Page)

    var firstChoice: Choice?
    var secondChoice: Choice?

    init(story: Story) {
        self.story = story
    }
}

extension Page {
    func addChoiceWith(title: String, story: Story) -> Page {
        let page = Page(story: story)
        return addChoiceWith(title: title, page: page)
    }

    func addChoiceWith(title: String, page: Page) -> Page {
//        guard firstChoice != nil && secondChoice != nil else { return self }
//
//        if firstChoice == nil {
//            firstChoice = (title, page)
//        } else {
//            secondChoice = (title, page)
//        }

//        Code above is replaced by this switch statement.
        switch (firstChoice, secondChoice) {
        case (.some, .some): return self
        case (.none, .none), (.none, .some): firstChoice = (title, page)
        case (.some, .none): secondChoice = (title, page)
        }

        return page
    }
}
