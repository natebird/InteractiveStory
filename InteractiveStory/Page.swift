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

struct Adventure {
    static var story: Page {
        let returnTrip = Page(story: .returnTrip)
        let touchdown = returnTrip.addChoiceWith(title: "Stop and Investigate", story: .touchDown)
        let homeward = returnTrip.addChoiceWith(title: "Continue home to Earth", story: .homeward)
        let rover = touchdown.addChoiceWith(title: "Explore the Rover", story: .rover)
        let crate = touchdown.addChoiceWith(title: "Open the Crate", story: .crate)

        homeward.addChoiceWith(title: "Head back to Mars", page: touchdown)
        let home = homeward.addChoiceWith(title: "Continue Home to Earth", story: .home)

        let cave = rover.addChoiceWith(title: "Explore the Coordinates", story: .cave)
        rover.addChoiceWith(title: "Return to Earth", page: home)

        cave.addChoiceWith(title: "Continue towards faint light", story: .droid)
        cave.addChoiceWith(title: "Refill the ship and explore the rover", page: rover)

        crate.addChoiceWith(title: "Explore the Rover", page: rover)
        crate.addChoiceWith(title: "Use the key", story: .monster)

        return returnTrip
    }
}












