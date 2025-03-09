# Tradutor Morse

Este projeto é uma implementação em Ruby de um transdutor Mealy para a tradução de código Morse em texto. Ele utiliza um autômato finito determinístico (AFD) que processa os sinais do código Morse e emite a saída correspondente imediatamente, conforme ocorre em transdutores Mealy.

## Descrição

O tradutor converte os sinais de código Morse — que incluem ponto (`.`), traço (`-`), delimitador de letras (espaço `" "`) e delimitador de palavras (`/`) — em texto legível. Cada estado do autômato é implementado como um método (ex.: `q0`, `q1`, `q2`, etc.) e a transição entre estados é feita com base no símbolo de entrada, emitindo a saída imediatamente conforme a transição.

## Características

- **Transdutor Mealy:**  
  A saída é gerada durante as transições, permitindo respostas imediatas assim que um símbolo é reconhecido.
- **Processamento Completo:**  
  O código adiciona um espaço extra ao final da entrada para garantir que o último caractere seja processado.
- **Interface Simples:**  
  Basta executar o programa e digitar o código Morse no terminal para obter a tradução.

## Requisitos

- Ruby (versão 2.0 ou superior)


