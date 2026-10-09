# ALFE — Tutorial de verificação do código on-chain

Este documento explica como confirmar se o código Solidity recuperado em `contracts/ALFEToken.sol` corresponde realmente ao contrato publicado na Polygon PoS Mainnet.

## 1. Confirmar os dados básicos

Contrato ALFE:

`0x2952f9aD84B5BE384d48Eab81Ac4fa2f21dB0532`

Rede: Polygon PoS  
Chain ID: 137  
Padrão: ERC-20  
Decimais esperados: 18

## 2. Abrir o contrato no PolygonScan

1. Abra o PolygonScan.
2. Pesquise pelo endereço do contrato.
3. Confirme que o endereço apresentado é exatamente:
   `0x2952f9aD84B5BE384d48Eab81Ac4fa2f21dB0532`
4. Verifique a rede: Polygon PoS.
5. Consulte as abas **Contract** e **Transactions**.

## 3. Verificar se o código já está publicado/verificado

Na página do contrato, abra **Contract**.

Se aparecer código-fonte verificado, procure:

- Compiler version;
- Optimization;
- Contract name;
- ABI;
- Source code.

Compare o código apresentado com `contracts/ALFEToken.sol` neste repositório.

### Atenção

O facto de o PolygonScan mostrar uma ABI ou informações de contrato **não significa automaticamente que o código recuperado neste repositório seja o mesmo código usado no deployment**.

## 4. Confirmar as características do código

No código recuperado, procure:

```solidity
contract ALFEToken is ERC20
```

E:

```solidity
constructor() ERC20("ALFE Token", "ALFE")
```

E:

```solidity
_mint(msg.sender, 10000000 * 10 ** decimals());
```

O código recuperado não contém uma função pública `mint()` adicional.

## 5. Confirmar o supply atual

Na área **Read Contract**, se disponível, consulte:

- `totalSupply()`
- `decimals()`
- `name()`
- `symbol()`

O código recuperado define 10.000.000 ALFE no deployment e não contém função adicional de mint.

## 6. Confirmar o deployment e o histórico

Abra **Transactions** e procure a transação de criação do contrato.

Depois confirme o evento `Transfer` inicial a partir do endereço zero para o endereço que recebeu os tokens no deployment.

O histórico on-chain deve ser coerente com a criação inicial de 10.000.000 ALFE.

## 7. Verificação profissional do bytecode

A confirmação mais forte consiste em reproduzir exatamente o build do Solidity e comparar o bytecode de runtime/deployment com o bytecode publicado.

Para isso é necessário conhecer exatamente:

- versão do Solidity;
- versão das dependências OpenZeppelin;
- optimizer ligado/desligado;
- número de optimizer runs;
- EVM version, se definida;
- código-fonte completo;
- imports e respetivas versões;
- constructor arguments.

O simples facto de compilar um ficheiro Solidity semelhante **não prova** que corresponde ao deployment.

## 8. O que significa uma confirmação positiva

Consideramos a recuperação tecnicamente confirmada quando:

1. o endereço do contrato está correto;
2. a rede está correta;
3. o código-fonte verificado no explorer corresponde ao código recuperado, ou
4. um build reproduzível gera bytecode compatível com o contrato publicado;
5. os dados on-chain (`name`, `symbol`, `decimals`, `totalSupply`) são coerentes com o código;
6. o histórico de deployment é coerente com a documentação.

## 9. Não alterar o contrato publicado

Esta verificação é apenas documental/técnica.

Não fazer novo deployment nem alterar `contracts/ALFEToken.sol` para tentar fazer o bytecode coincidir.

Se o código recuperado não corresponder ao contrato publicado, devemos documentar a divergência e investigar a origem antes de qualquer decisão.

## Estado atual

**Estado: PENDENTE DE VERIFICAÇÃO ON-CHAIN.**

O código Solidity foi recuperado do projeto original em outubro de 2026, mas ainda não foi demonstrado neste repositório que o bytecode publicado em Polygon corresponde exatamente a esse código.
