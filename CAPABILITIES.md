# Capabilities

Esta central separa integrações do Codex de executáveis locais. **Connector status** informa acesso por plugin/conector; **Local CLI status** informa apenas binários instalados neste ambiente. A ausência de CLI não invalida um conector conectado.

| Recurso | Tipo | Connector status | Local CLI status | Uso |
| --- | --- | --- | --- | --- |
| GitHub | Plugin/Connector | CONNECTED | N/A | Repositórios, leitura, escrita, commits e push. |
| Vercel | Plugin/Connector | CONNECTED | NOT INSTALLED | Projetos, deploys e logs pelo conector; use CLI somente quando necessária. |
| Supabase | Plugin/Connector | CONNECTED | NOT INSTALLED | Banco, auth e recursos pelo conector; use CLI somente quando necessária. |
| Figma | Plugin/Connector | NOT CONNECTED | N/A | Referência de design quando um conector Figma for disponibilizado. |
| Agent Browser | Local Tool | N/A | AVAILABLE ON DEMAND | Automação e validação via `tools/agent-browser`. |
| Remotion | Local Tool | N/A | AVAILABLE ON DEMAND | Engine de vídeo instalada sob demanda no Video Factory. |
| Video Factory | Local Module | N/A | AVAILABLE ON DEMAND | Módulo próprio em `tools/video-factory`. |
| MoneyPrinterTurbo | External Repository | N/A | AVAILABLE ON DEMAND | Automação rápida de vídeos curtos; requer ambiente Python e pode exigir APIs configuradas pelo usuário. |

Quando houver plugin/conector **CONNECTED**, prefira-o. Não exija nem instale uma CLI local apenas para replicar uma operação que o conector já realiza.
