---
name: browser-testing
description: Testar e verificar sites por automação de navegador usando o Agent Browser quando ele estiver disponível.
---

# Browser testing

Antes de testar, leia as regras do projeto e confirme o estado do Agent Browser em `CAPABILITIES.md` ou com `scripts/audit-tools.ps1`.

## Instalação reprodutível

No diretório `tools/agent-browser`, execute `npm install` e `npm run install-browser`. Isso instala a dependência local e o Chrome for Testing sem depender de uma instalação global.

## Fluxo mínimo

Execute `npx agent-browser open <url>`, `npx agent-browser wait --load networkidle`, `npx agent-browser snapshot -i` e `npx agent-browser close`. Gere um snapshot novo após cada navegação ou mudança dinâmica.

Teste os fluxos alterados, estados de erro e console quando relevantes. Não envie formulários externos, publique conteúdo nem manipule dados reais sem autorização explícita.

