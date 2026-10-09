# Roadmap — ALFE

**Versão:** outubro de 2026  
**Estado:** indicativo; as fases dependem de validação e recursos disponíveis.

## 1. Recuperação do contrato — concluída

- Recuperado o ficheiro Solidity original `contracts/ALFEToken.sol`.
- Confirmada implementação ERC-20 baseada em OpenZeppelin.
- Confirmado supply de 10.000.000 ALFE criado no construtor.
- Confirmada ausência de `mint()`, `owner()`, `burn()` e `pause()` no código recuperado.

## 2. Validação on-chain — em curso

- Comparar o código recuperado com o bytecode publicado.
- Confirmar `totalSupply()` atual.
- Confirmar saldos e carteiras relevantes.
- Documentar a correspondência entre o contrato e o código recuperado.

## 3. Tokenomics — atualização em curso

- Tratar 10 milhões como supply definido pelo contrato recuperado.
- Remover a antiga referência a 20 milhões.
- Não utilizar a antiga distribuição 40%/30%/20%/10% como distribuição on-chain.
- Documentar apenas carteiras e categorias que tenham correspondência verificável.

## 4. Utilidade comunitária — planeada, sujeita a validação

- Avaliar certificados digitais e distintivos de participação.
- Avaliar acesso a conteúdos, eventos ou funcionalidades específicas.
- Realizar consultas digitais de natureza claramente identificada.
- Garantir que nenhuma funcionalidade substitui os estatutos ou os órgãos da associação.

## 5. Verificação do código — pendente

- Avaliar publicação/verificação do código no PolygonScan.
- Garantir que a documentação pública corresponde ao contrato efetivamente publicado.

## 6. Revisão jurídica e regulatória — necessária antes de alterações materiais

- Rever o enquadramento do token e as comunicações públicas.
- Avaliar campanhas, donativos, benefícios e eventuais mecanismos de utilização ou negociação.

## Critério de conclusão

Uma etapa só deverá ser considerada concluída quando exista evidência verificável e documentação atualizada.
