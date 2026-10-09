# ALFE — Alma Fénix Participation Token
## Whitepaper conceptual, funcional e técnico

**Versão:** 3.0  
**Data:** outubro de 2026  
**Estado:** documento conceptual e informativo sujeito a validação jurídica, fiscal, estatutária, técnica e regulatória.

---

## 1. Sumário executivo

O **ALFE** é concebido como um token digital de participação, reconhecimento e utilidade comunitária no ecossistema Alma Fénix.

O ALFE não representa capital da associação, participação no seu património, direito a lucros ou excedentes, nem promessa de valorização financeira. A posse de ALFE não confere, por si só, qualidade de associado nem substitui os direitos e deveres previstos nos estatutos.

## 2. Natureza e utilização

O ALFE poderá apoiar, quando efetivamente implementado:

- reconhecimento de participação em atividades e projetos;
- distintivos ou certificados digitais;
- acesso a conteúdos, eventos ou funcionalidades específicas;
- consultas comunitárias de natureza não estatutária;
- reconhecimento de contributos artísticos, educativos, culturais, científicos ou sociais.

Estas possibilidades não constituem garantia de serviços futuros.

## 3. O que o ALFE não representa

O ALFE não confere, por si só:

- dividendos, juros ou participação em lucros/excedentes;
- direitos sobre o património da Alma Fénix;
- participação no capital da associação;
- remuneração financeira pela simples detenção;
- direito a reembolso, resgate, recompra ou conversão em euros;
- garantia de liquidez, preço mínimo ou valorização;
- qualidade de associado ou direito automático de voto em Assembleias Gerais.

As consultas digitais nunca substituem os órgãos estatutários nem as deliberações formalmente previstas nos estatutos.

## 4. Atribuição, quotas e donativos

O ALFE poderá ser atribuído segundo critérios transparentes associados a participação, voluntariado, contributos culturais, educativos, científicos ou sociais.

A atribuição de tokens não substitui remuneração por trabalho ou serviços legalmente devida.

Quotas, donativos, subsídios e financiamento de projetos são mecanismos distintos da detenção de tokens. Um donativo não constitui investimento na associação nem confere direitos sobre lucros ou património.

## 5. Blockchain e contrato

O ALFE está documentado como **ERC-20 na Polygon PoS**, Chain ID **137**.

**Contrato:** `0x2952f9aD84B5BE384d48Eab81Ac4fa2f21dB0532`  
**Decimais:** 18

Foi recuperado o ficheiro Solidity original `contracts/ALFEToken.sol`, baseado em OpenZeppelin `ERC20`.

A implementação recuperada é:

```solidity
contract ALFEToken is ERC20 {
    constructor() ERC20("ALFE Token", "ALFE") {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }
}
```

Isto significa que o contrato cria **10.000.000 ALFE** no deployment, para o `msg.sender`.

O código recuperado **não contém função `mint()`**. Também não contém `Ownable`, `owner()`, `burn()` ou `pause()` próprios, nem mecanismo de proxy/upgradeability no ficheiro apresentado.

## 6. Supply e tokenomics

O código recuperado estabelece uma emissão de **10.000.000 ALFE** no construtor e não apresenta função posterior de emissão.

Assim, para efeitos de documentação do contrato recuperado, **10.000.000 ALFE é o supply definido pela implementação encontrada**.

A documentação anterior indicava 20.000.000 ALFE e uma distribuição conceptual 40%/30%/20%/10%. Essa informação fica **expressamente substituída**. Não deve ser apresentada como distribuição on-chain.

Não existe atualmente uma distribuição percentual oficial documentada que possa ser afirmada sem correspondência verificável entre categorias e carteiras.

## 7. Dados on-chain observados

| Parâmetro | Dado |
|---|---|
| Nome | ALFE Token |
| Símbolo | ALFE |
| Padrão | ERC-20 |
| Rede | Polygon PoS |
| Chain ID | 137 |
| Contrato | `0x2952f9aD84B5BE384d48Eab81Ac4fa2f21dB0532` |
| Decimais | 18 |
| Supply definido no código recuperado | **10.000.000 ALFE** |
| Max Total Supply apresentado pelo explorador | 10.000.000 ALFE |
| Holders apresentados | 2 |
| Transferências apresentadas | 2 |

O histórico observado pelo explorador apresenta uma criação inicial de 10.000.000 ALFE a partir do endereço nulo e uma transferência posterior de 1.000 ALFE.

O código-fonte recuperado ainda não foi bytecode-verificado contra o contrato publicado no PolygonScan. Assim, a documentação distingue entre **código recuperado** e **estado on-chain observado**.

## 8. Controlo do contrato

Ao contrário do ETHIK, o código ALFE recuperado não implementa `Ownable` nem uma função `owner()` própria. Portanto, não devemos descrever o ALFE como um token com “owner” com base neste código.

O facto de a carteira de deployment ter recebido os tokens iniciais não lhe confere automaticamente poderes administrativos sobre o contrato.

## 9. Transparência e riscos

A blockchain permite verificar transações, mas não garante a veracidade de métricas de impacto. A associação deverá minimizar dados pessoais on-chain e informar os participantes sobre perda de chaves, phishing e irreversibilidade de certas transações.

Não devem ser prometidos mercado, liquidez, valorização, rendimento ou conversão em euros.

## 10. Enquadramento jurídico e regulatório

A classificação jurídica depende das características efetivas do ativo, dos direitos associados, da emissão, distribuição, transferibilidade e promoção. A intenção social ou a designação “token comunitário” não determinam, por si só, o enquadramento jurídico.

O [Regulamento (UE) 2023/1114 relativo aos mercados de criptoativos (MiCA)](https://eur-lex.europa.eu/eli/reg/2023/1114/oj) poderá ser relevante consoante o desenho e utilização concretos. Antes de promover, distribuir, negociar ou criar mecanismos de compra e venda, deve ser obtida análise jurídica e regulatória específica.

Este documento não constitui parecer jurídico, autorização regulatória, oferta pública ou aconselhamento financeiro.

## 11. Roadmap técnico

1. **Recuperação do código original — concluída.**
2. **Validação do código contra o contrato on-chain — em curso.**
3. **Confirmação do `totalSupply()` atual — pendente.**
4. **Verificação/publicação do código no PolygonScan — pendente.**
5. **Documentação final da distribuição e carteiras — pendente.**
6. **Validação jurídica e regulatória antes de alterações materiais — necessária.**

**Nota:** os dados técnicos devem ser atualizados se a implementação on-chain for alterada.