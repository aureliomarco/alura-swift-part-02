//
//  ViewController.swift
//  egg
//
//  Created by Marco Aurelio on 17/10/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Force Unwrapping
    // Está dizendo ao swift que esta variável terá um valor
    // É a exclamação (!) no final de UITextField

    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        // if let
        /*
        if let nomeDaRefeicao = nomeTextField?.text, let felidadeDaRefeicao = felicidadeTextField?.text {
            let nome = nomeDaRefeicao
            if let felicidade = Int(felidadeDaRefeicao) {
                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
                
                print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
            } else {
                print("Erro ao tentar criar a refeição")
            }
        }
        */
        
        // guard let
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
    }
}

