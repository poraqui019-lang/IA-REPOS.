# IA-REPOS

Central de conhecimento, skills e módulos reutilizáveis para projetos. Ela ajuda a escolher soluções já avaliadas, sem misturar código, regras ou contexto entre projetos.

## Como funciona

Antes de uma tarefa, identifique o projeto atual, leia as instruções dele e consulte [AGENTS.md](AGENTS.md), [CAPABILITIES.md](CAPABILITIES.md), [REPOSITORIES.md](REPOSITORIES.md) e a skill pertinente. Use uma solução existente apenas quando ela resolver o problema; depois teste o resultado.

A central separa **plugins/conectores do Codex** de **CLIs/ferramentas locais**. Quando um conector estiver marcado como conectado, ele é a opção preferencial; uma CLI local só deve ser usada ou instalada quando ela realmente acrescentar algo.

## Estrutura

- `skills/`: instruções curtas por domínio.
- `tools/agent-browser/`: instalação local e reproduzível do Agent Browser.
- `tools/video-factory/`: módulo próprio de vídeo vertical baseado em Remotion.
- `scripts/audit-tools.ps1`: auditoria sem efeitos colaterais.
- `DISCOVERY.md`: descoberta segura de ferramentas e repositórios.

## Auditoria

No PowerShell, execute:

```powershell
./scripts/audit-tools.ps1
```

O script audita executáveis locais. O estado de conectores é registrado em `CAPABILITIES.md`, porque ele pertence ao Codex e não ao shell. Nenhum segredo é lido ou impresso.

## Agent Browser

Para uma instalação reprodutível, entre em `tools/agent-browser` e execute:

```bash
npm install
npm run install-browser
npm run test:public
```

O teste abre `https://example.com`, espera o carregamento, obtém um snapshot e fecha o navegador.

## Video Factory

Em `tools/video-factory`:

```bash
npm install
npm run studio
npm run render:test
```

Os renders vão para `out/` e não entram no Git. Novas composições reutilizáveis ficam em `templates/`; assets e áudio ficam em `assets/`.

## Escolha de workflow de vídeo

Consulte primeiro `skills/video/SKILL.md`. Use **MoneyPrinterTurbo** para automação rápida de Shorts, Reels e TikTok a partir de tema, roteiro ou palavras-chave. Use **Remotion / Video Factory** quando assets precisarem ser preservados, houver controle preciso de cenas, edição quadro a quadro ou produto visualmente imutável. MoneyPrinterTurbo é um repositório externo disponível sob demanda e não é copiado para esta central.

## Como expandir

Ao adicionar um repositório, registre nome, URL, categoria, finalidade, quando usar, quando não usar, dependências e status em `REPOSITORIES.md`. Ao adicionar uma skill, crie `skills/<nome>/SKILL.md` com frontmatter `name` e `description`, instruções focadas e validação aplicável.
