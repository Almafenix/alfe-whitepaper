# Security Policy — ALFE

## Scope

This repository documents the ALFE participation and utility token and its recovered Solidity source.

**Network:** Polygon PoS  
**Chain ID:** 137  
**ERC-20 contract:** `0x2952f9aD84B5BE384d48Eab81Ac4fa2f21dB0532`

## Important technical note

The source in `contracts/ALFEToken.sol` was recovered from the original project files in October 2026. It has **not yet been bytecode-verified against the deployed contract**.

The recovered contract defines an initial supply of 10,000,000 ALFE. It does not define an additional mint function, owner-controlled minting, pause, blacklist, transfer tax, or proxy/upgradeability in the recovered file.

Until bytecode verification is completed, this repository must not be described as an independently verified reproduction of the deployed contract.

## Reporting a vulnerability

Please report suspected security vulnerabilities privately to the project maintainers before opening a public issue.

Do not publish private keys, seed phrases, passwords, API keys, or other secrets in GitHub issues, pull requests, commits, or discussions.

When reporting a technical issue, include where possible:

- affected contract/function;
- network and transaction hash;
- steps to reproduce;
- expected and actual behaviour;
- potential impact;
- relevant logs or screenshots without exposing secrets.

## Security principles

- Never commit private keys, seed phrases, RPC credentials, or API tokens.
- Treat the deployed contract as authoritative for on-chain behaviour until source verification is complete.
- Do not change the deployed contract documentation based only on assumptions about the original source.
- Preserve the recovered source separately from any future redeployment or redesign.

## Verification status

The repository contains recovered source and documentation. On-chain source verification and bytecode comparison remain a separate step and are documented in `VERIFICATION.md`.
