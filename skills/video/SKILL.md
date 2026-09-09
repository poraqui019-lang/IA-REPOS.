---
name: video
description: Criar e validar vídeos programáticos com o módulo Video Factory baseado em Remotion.
---

# Video Factory

Antes de iniciar um vídeo, escolha o fluxo: **MoneyPrinterTurbo = automação rápida**; **Remotion / Video Factory = controle preciso**.

Use `skills/moneyprinter-video/SKILL.md` e o repositório externo MoneyPrinterTurbo para Shorts, Reels e TikTok automatizados a partir de tema, roteiro ou palavras-chave. Use `tools/video-factory` para preservar assets específicos, controlar cada cena, editar quadro a quadro ou manter um produto visualmente inalterado. Não copie MoneyPrinterTurbo para esta central.

O Video Factory usa Remotion e começa com uma composição vertical 1080×1920 de teste.

Antes de criar algo, verifique assets, identidade visual, proporção, duração, roteiro e padrões do projeto atual. Mantenha os projetos isolados: não misture assets, configurações ou regras entre eles.

No módulo, execute `npm install`, use `npm run studio` para preview e `npm run render:test` como verificação. Coloque assets em `assets/`, áudio em `assets/audio/` e composições reutilizáveis em `templates/`. Não versione renders; `out/` é ignorado.
