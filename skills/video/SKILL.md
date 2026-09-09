---
name: video
description: Criar e validar vídeos programáticos com o módulo Video Factory baseado em Remotion.
---

# Video Factory

Use `tools/video-factory` como módulo próprio para vídeo programático. Ele usa Remotion e começa com uma composição vertical 1080×1920 de teste.

Antes de criar algo, verifique assets, identidade visual, proporção, duração, roteiro e padrões do projeto atual. Mantenha os projetos isolados: não misture assets, configurações ou regras entre eles.

No módulo, execute `npm install`, use `npm run studio` para preview e `npm run render:test` como verificação. Coloque assets em `assets/`, áudio em `assets/audio/` e composições reutilizáveis em `templates/`. Não versione renders; `out/` é ignorado.

