// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract OlaMundo {
    string private message;
    constructor() {
        message = "Ola Mundo Web 3";
    }
    // Função pública que retorna a mensagem
    function imprimir() public view returns (string memory) {
        return message;
    }
}
