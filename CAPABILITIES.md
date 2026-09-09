# Capabilities

Estados: **CONNECTED** é uma integração autenticada; **INSTALLED** é um executável presente; **AVAILABLE ON DEMAND** pode ser instalado ou carregado quando necessário; **UNAVAILABLE** ainda não está configurado.

| Recurso | Estado real | Evidência da auditoria | Uso |
| --- | --- | --- | --- |
| GitHub | CONNECTED | Conector autorizado: leitura e escrita confirmadas em `poraqui019-lang/IA-REPOS.` | Repositórios, commits e push. |
| Vercel | UNAVAILABLE | `vercel --version`: comando ausente | Deploy quando CLI ou integração for configurada. |
| Supabase | UNAVAILABLE | `supabase --version`: comando ausente | Banco e auth quando integração ou CLI for configurada. |
| Figma | UNAVAILABLE | Nenhum conector/plugin exposto nesta sessão | Referência de design após conexão. |
| Agent Browser | AVAILABLE ON DEMAND | Pacote local reprodutível em `tools/agent-browser`; instalação bloqueada por TLS do registry neste ambiente | Automação e validação de navegador. |
| Remotion | AVAILABLE ON DEMAND | Módulo em `tools/video-factory`; instalação bloqueada por TLS do registry neste ambiente | Engine do Video Factory. |
| Video Factory | AVAILABLE ON DEMAND | Estrutura e composição inicial presentes; render depende da instalação do Remotion | Vídeo vertical programático. |

Consulte o estado antes de escolher uma ferramenta. Não introduza uma tecnologia apenas porque ela está catalogada.

