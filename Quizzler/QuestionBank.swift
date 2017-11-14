//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Hammoud Hammoud on 11/14/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        list.append(Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true))
        
        list.append(Question(text: "A slug\'s blood is green.", correctAnswer: true))

        list.append(Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        list.append(Question(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        list.append(Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        list.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        list.append(Question(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        list.append(Question(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        list.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
        
        list.append(Question(text: "There are more fake flamingos in the world than real ones", correctAnswer: true))
        
        list.append(Question(text: "Bananas grow on trees", correctAnswer: false))
        
        list.append(Question(text: "Russia has a larger surface area than Pluto", correctAnswer: true))
        
        list.append(Question(text: "The Great Wall of China can be seen with the unaided eye from space", correctAnswer: false))
        
        list.append(Question(text: "Sugar makes children hyper", correctAnswer: false))
        
        list.append(Question(text: "Cracking you knuckles too much will give you arthritis", correctAnswer: false))
        
        list.append(Question(text: "Black holes aren't black", correctAnswer: true))
        
        list.append(Question(text: "Carrots help you see in the dark", correctAnswer: false))
        
        list.append(Question(text: "Shaving makes hair grow back faster", correctAnswer: false))
        
        list.append(Question(text: "Mammoths still walked the Earth when the Great Pyramid was being built", correctAnswer: true))
        
        list.append(Question(text: "For every human on Earth there are 1.6 million ants", correctAnswer: true))
        
        list.append(Question(text: "Going out with wet hair increases your chances of catching a cold", correctAnswer: false))
        
        list.append(Question(text: "If a piece of paper was folded 45 times, it would reach to the moon", correctAnswer: true))
        
        list.append(Question(text: "It rains diamonds on Saturn and Jupiter", correctAnswer: true))
        
        list.append(Question(text: "Oxford University is older than the Aztex empire", correctAnswer: true))
        
        list.append(Question(text: "Eating chocolate gives you spots", correctAnswer: false))
        
        list.append(Question(text: "Pirates wore eye patches so they could see better in the dark", correctAnswer: true))
        
        list.append(Question(text: "An octopus has three hearts", correctAnswer: true))
        
        list.append(Question(text: "Chewing gum takes seven years for a person to digest", correctAnswer: false))
        
        list.append(Question(text: "There are more stars in space than grains of sand on every beach in the world", correctAnswer: true))
    }
}
