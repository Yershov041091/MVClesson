//
//  VerbTableViewCell.swift
//  MVClesson
//
//  Created by Artem Yershov on 24.07.2023.
//

import UIKit

final class VerbTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var infinitiveLabel: UILabel!
    @IBOutlet private weak var translationLabel: UILabel!
    @IBOutlet private weak var pastLabel: UILabel!
    @IBOutlet private weak var participleLabel: UILabel!
    
    func configureVerb(for verb: Verb) {
        infinitiveLabel.text = verb.infinitive
        translationLabel.text = verb.translate
        pastLabel.text = verb.pastSimple
        participleLabel.text = verb.participle
    }
}
