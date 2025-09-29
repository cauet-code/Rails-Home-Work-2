# myrottenpotatoes

Aplicação Rails construída seguindo o roteiro do capítulo 4 do livro *Engineering Software as a Service* e as orientações do exercício prático de Git & Rails. O app permite cadastrar filmes, consultar detalhes, editar, remover e ordenar a listagem por título ou data de lançamento.

## Requisitos atendidos

- ✅ CRUD completo do modelo `Movie` (`title`, `rating`, `release_date`).
- ✅ Rotas RESTful (`resources :movies`) com `root` em `movies#index`.
- ✅ Views para `index`, `show`, `new`, `edit` com formulários reutilizando o partial `_form`.
- ✅ Mensagens flash para operações de criação, atualização e remoção.
- ✅ Ordenação clicável por título e data de lançamento com destaque visual para a coluna ativa.
- ✅ Repositório Git iniciado com commit inicial.

## Stack

- Ruby 3.4.6 (vide `.ruby-version`).
- Rails 8.0.3.
- Banco de dados SQLite (default development/test).

## Preparando o ambiente

1. Instale as dependências Ruby:

	```bash
	bundle install
	```

2. Crie e atualize o banco de dados:

	```bash
	bin/rails db:setup
	```

3. Inicie o servidor de desenvolvimento:

	```bash
	bin/rails server
	```

4. Acesse `http://localhost:3000` para usar o app.

## Testes

Execute a suíte padrão do Rails:

```bash
bin/rails test
```

Nenhum teste customizado foi adicionado ainda, mas o comando garante que o ambiente está configurado corretamente.

## Fluxo de trabalho com Git

- O repositório já está inicializado (`git init`) e contém o commit inicial.
- Configure um remoto próprio antes de publicar:

  ```bash
  git remote add origin <URL-do-seu-repositório>
  git push -u origin main
  ```

- Faça commits pequenos e frequentes ao evoluir funcionalidades.

## Próximos passos sugeridos

- Adicionar validações de modelo (ex.: presença de título, formato de data).
- Criar testes de sistema exercitando o fluxo de cadastro e ordenação.
- Melhorar a camada de apresentação com componentes reutilizáveis e i18n completo.
