//
//  ViewController.swift
//  egg
//
//  Created by Marco Aurelio on 17/10/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
     func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {
    
    // MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    
    // MARK: - IBOutlets
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    // MARK: - IBActions
    
    @IBAction func adicionar(_ sender: Any) {
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }
}
