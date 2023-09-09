# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Rails.application.eager_load!

Question.create(
    prompt: "En un circuito con 3 resistencias en serie, todas de 10 ohms, ¿Cual es la resistencia total del circuito?",
    answer: "30 Ohms",
    difficulty: 1,
    topic: "RSP",
    fake_answers: ["10 Ohms", "20 Ohms", "15 Ohms", "3.33 Ohms", "60 Ohms", "0 Ohms", "33 Ohms"]
    )

Question.create(
    prompt: "En un circtuito con 2 resistencias de 8 Ohms en paralelo, ¿Cual es la resistencia total del circuito?",
    answer: "4 Ohms",
    difficulty: 1,
    topic: "RSP",
    fake_answers: ["16 Ohms", "20 Ohms", "8 Ohms", "24 Ohms", "30 Ohms", "2 Ohms"]
)

Question.create(
    prompt: "¿Que es la resistencia equivalente de un circuito?",
    answer: "La suma algebraica de todas las resistencias del circuito",
    difficulty: 1,
    topic: "RSP",
    fake_answers: [
        "La resistencia mayor del circuito",
        "La resistencia menor del circuito",
        "Siempre será la suma de solo las resistencias en serie",
        "Siempre será la suma de solo las resistencias en paralelo",
        "El voltaje del circuito dividido en la resistencia mayor",
        "Un diagrama que demuestra la direccion de la corriente"
    ]
)

Question.create(
    prompt: "Si se tiene un circuito solamente con dos resistencias de 1 Ohm y sin fuente de voltaje, ¿Cual es la corriente maxima del circuito?",
    answer: "0 A",
    difficulty: 1,
    topic: "RSP",
    fake_answers: ["1 A", "2 A", "4 A", "0.5 A", "0.2 A", "-1 A", "10 A", "20 A"]
)

aa = Question.create(
    prompt: "¿Como se calcula la corriente de un circuito si tenemos el voltaje (V) y la resistencia equivalente (R)?",
    answer: "V/R = I",
    difficulty: 1,
    topic: "RSP",
    fake_answers: ["V*R = I", "R/V = I", "V*2/R = I", "V/(R*2) = I", "V*V*R = I"]
)

aa.image.attach(
    io: File.open("app/images/cattest.jpeg"),
    filename: "cattest.jpeg",
    content_type: "image/jpeg"
)