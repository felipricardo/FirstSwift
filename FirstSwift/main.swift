//
//  main.swift
//  FirstSwift
//
//  Created by Felipe Mourão on 20/10/23.
//
import Foundation

class Program {
    static func main() {
        // Inicia o menu
        menu()
    }

    // Prepara a contagem regressiva antes de iniciar o cronômetro
    static func preStart(time: Int) {
        print("Ready...")
        sleep(1)
        print("Set...")
        sleep(1)
        print("Go...")
        sleep(2)

        // Inicia a contagem regressiva
        start(time: time)
    }

    // Exibe o menu principal
    static func menu() {
        print("S - Segundo => 10s = 10 segundos")
        print("M - Minuto => 1m = 1 minuto")
        print("0 - Sair")
        print("Quanto tempo deseja contar?")

        // Lê a entrada do usuário para determinar o tempo e o tipo
        guard let data = readLine()?.lowercased() else { return }
        let type = data.last!
        guard let time = Int(data.dropLast()) else { return }
        var multiplier = 1

        // Converte o tipo para segundos se for minuto
        if type == "m" {
            multiplier = 60
        }

        // Encerra o programa se o tempo for zero
        if time == 0 {
            return
        }

        // Inicia a preparação e contagem regressiva
        preStart(time: time * multiplier)
    }

    // Inicia a contagem regressiva
    static func start(time: Int) {
        var currentTime = 0

        // Enquanto o tempo não for alcançado, exibe a contagem e espera um segundo
        while currentTime != time {
            currentTime += 1
            print(currentTime)
            sleep(1)
        }

        // Exibe uma mensagem ao final da contagem
        print("Stopwatch finalizado!")
        sleep(2)

        // Volta ao menu principal
        menu()
    }
}

Program.main()

