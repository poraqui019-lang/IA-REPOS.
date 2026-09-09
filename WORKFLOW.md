# Workflow operacional

1. Identifique o projeto atual e leia suas regras locais.
2. Consulte `AGENTS.md`, `CAPABILITIES.md`, o catálogo e a skill aplicável.
3. Confira os dois estados de cada recurso: conector do Codex e CLI local.
4. Quando houver plugin/conector **CONNECTED**, prefira-o. Não instale uma CLI apenas para reproduzir uma operação já disponível pelo conector.
5. Escolha somente soluções relevantes e reutilize o que já funciona quando apropriado.
6. Implemente a menor mudança necessária, sem cruzar arquivos ou regras entre projetos.
7. Preserve código e layout existentes salvo necessidade estrutural explícita.
8. Teste antes de concluir: para sites, use Agent Browser quando estiver disponível; para vídeo, faça preview ou render com o Video Factory; para deploy e banco, use conectores Vercel e Supabase quando aplicáveis.
9. Corrija falhas, registre a validação e declare dependências pendentes.
