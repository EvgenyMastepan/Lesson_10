//
//  swift. 9th stream
//  Lesson_10
//
//  Created by Evgeny Mastepan on 19.10.2024.
//

import Foundation
//
///* Задача 1: Создайте протокол Playable: Метод: play(), который не принимает параметров и ничего не возвращает. */
//
//protocol Playable {
//    func play()
//}
//
///* Задача 2: Создайте классы Piano, Guitar и Drum, которые соответствуют протоколу Playable: У каждого класса метод play() должен выводить, что за инструмент играет (например, "Пианино играет мелодию"). */
//
//class Piano: Playable {
//    func play() {
//        print("Играет клавишный инструмент.")
//    }
//}
//
//class Guitar: Playable {
//    func play() {
//        print("Звучит щипковый инструмент.")
//    }
//}
//
//class Drum: Playable {
//    func play() {
//        print("Звук ударного инструмента.")
//    }
//}
//
///* Задача 3: Создайте функцию performConcert, которая принимает массив объектов, соответствующих Playable, и вызывает метод play() для каждого из них.
// */
//
//func performConcert(instruments: [Playable]){
//    for instrument in instruments{
//        instrument.tune()
//        instrument.play()
//    }
//}
//
///* Задача 4. Создайте расширение для Playable, которое добавляет метод tune(), выводящий сообщение "Настройка инструмента...", и вызовите его в функциях каждого объекта перед play(). */
//
//extension Playable {
//    func tune(){
//        print("Подождите, производится настройка инструмента.")
//    }
//}
//
///* После выполнения всех заданий:
// ● Создайте объекты классов Piano, Guitar и Drum.
// ● Передайте их в функцию performConcert. */
//let pianino = Piano()
//let fortepiano = Piano()
//let royal = Piano()
//let clavesine = Piano()
//let organ = Piano()
//let sintezator = Piano()
//let midi = Piano()
//
//let guitar = Guitar()
//let ljutnja = Guitar()
//let domra = Guitar()
//let mandolie = Guitar()
//let ukulele = Guitar()
//let banjo = Guitar()
//
//let baraban = Drum()
//let plate = Drum()
//let castanete = Drum()
//let buben = Drum()
//let bells = Drum()
//let xilophone = Drum()
//
//let orchestra: [Playable] = [
//pianino, fortepiano, royal, clavesine, organ, sintezator, midi,
//guitar, ljutnja, domra, mandolie, ukulele, banjo,
//baraban, plate, castanete, buben, bells, xilophone
//]
//
//performConcert(instruments: orchestra)

/* 1. Протоколы:
 ○ Создайте протокол Ink, который определяет метод print().
 2. Классы чернил:
 ○ Реализуйте несколько классов чернил (например, RedInk, BlueInk, GreenInk), каждый из которых соответствует протоколу Ink.
 ○ В каждом классе реализуйте метод print(), который выводит сообщение о печати с использованием соответствующего цвета (можете использовать простые строки для имитации цвета).
 3. Класс принтера:
 ○ Создайте класс Printer, который имеет свойство ink типа Ink.
 ○ Добавьте метод startPrinting(), который вызывает метод print() у текущего объекта ink.
 4. Демонстрация полиморфизма: В основном блоке кода создайте экземпляр Printer. Последовательно назначайте ему
 различные объекты чернил (RedInk, BlueInk, GreenInk) и вызывайте метод startPrinting(), демонстрируя
 полиморфное поведение.
 5. Используйте перечисления enum для определения доступных цветов.
  */

enum CMYKColours {
    case cyan
    case magenta
    case yellow
    case key
}

protocol Ink{
    func print()
}

class Cyan: Ink{
    func print() {
        Swift.print("Печать синими чернилами")
    }
}

class Magenta: Ink{
    func print() {
        Swift.print("Печать бордовыми чернилами")
    }
}

class Yellow: Ink{
    func print() {
        Swift.print("Печать жёлтыми чернилами")
    }
}

class Key: Ink{
    func print() {
        Swift.print("Печать чёрными чернилами")
    }
}

class Printer {
    var ink: Ink
    init(ink: Ink){
        self.ink = ink
    }
    func startPrinting(){
        ink.print()
    }
}
let cyanInk = Cyan()
let printer = Printer(ink: cyanInk)
printer.startPrinting()
