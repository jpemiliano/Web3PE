// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Cofre {
    address public dono;
    constructor() {
        dono = msg.sender;
    }
// Função que permite ao contrato receber Ether explicitamente
    function depositar() public payable {
        // O valor é automaticamente adicionado ao saldo do contrato
    }
    // Função especial para receber Ether sem dados
    receive() external payable {
        // Nenhuma lógica necessária — o saldo é atualizado automaticamente
    }
    function saldoDoContrato() public view returns (uint256) {
        return address(this).balance;
    }
    function transferPara(address payable destinatario, uint256 valor) public payable {
       require(msg.sender == dono, "Apenas o dono pode transferir");
       require(valor <= address(this).balance, "Saldo insuficiente");
       destinatario.transfer(valor);
    }
	fallback() external payable { // código executado quando função não encontrada
   }
}
