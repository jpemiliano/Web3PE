// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Registro de produção de baterias
/// @notice Armazena dados de cada bateria produzida pela fábrica.

contract RegistroDeBaterias {
    address public dono;

    constructor() {
        dono = msg.sender;
    }

    struct Bateria {
        string tipo;
        string uso;
        uint256 tensao;
        string dataProd;
        string lote;
    }

    Bateria[] public baterias;

    /// @notice Registra uma nova bateria
    /// @param tipo Tipo da bateria
    /// @param uso Aplicação da bateria
    /// @param tensao Tensão nominal em volts
    /// @param dataProd Data de produção (formato string)
    /// @param lote Número do lote
    function registrarBateria(
        string memory tipo,
        string memory uso,
        uint256 tensao,
        string memory dataProd,
        string memory lote
    ) public {
        baterias.push(Bateria(tipo, uso, tensao, dataProd, lote));
    }

    /// @notice Retorna os dados de uma bateria pelo índice
    function consultarBateria(uint256 index) public view returns (
        string memory tipo,
        string memory uso,
        uint256 tensao,
        string memory dataProd,
        string memory lote
    ) {
        Bateria memory b = baterias[index];
        return (b.tipo, b.uso, b.tensao, b.dataProd, b.lote);
    }

    /// @notice Retorna o total de baterias registradas
    function totalBaterias() public view returns (uint256) {
        return baterias.length;
    }
}
