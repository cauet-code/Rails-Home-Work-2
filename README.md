## RottenPotatoes (Rails 8)

Aplicação Rails que implementa o clássico RottenPotatoes: um catálogo simples de filmes em que é possível criar, listar, ordenar, visualizar, editar e excluir registros. A listagem permite ordenar por título e por data de lançamento, e as views reutilizam um partial de formulário para criação/edição.

Principais pontos da implementação:
- Modelo `Movie` com atributos: `title`, `rating` e `release_date`.
- Rotas RESTful via `resources :movies` e rota raiz em `movies#index`.
- CRUD completo com mensagens flash nas ações de create/update/destroy.
- Ordenação clicável na index (título e data de lançamento) com destaque visual na coluna ativa.

### Stack
- Ruby 3.4.6
- Rails 8.0.3
- SQLite (desenvolvimento e teste)

---

## Como instalar e rodar

Pré-requisitos:
- Ruby 3.4.x e Bundler instalados.
- SQLite3 disponível no sistema (macOS já inclui; se necessário, instale via Homebrew).

1) Instalar dependências
```bash
bundle install
```

2) Preparar o banco de dados
```bash
bin/rails db:prepare
# Se quiser popular com dados de exemplo (seeds):
# bin/rails db:seed
```

3) Subir o servidor de desenvolvimento
```bash
bin/rails server
```

4) Acessar no navegador
- http://localhost:3000

## Testes
```bash
bin/rails test
```

## Executar com Docker (opcional)
Este repositório inclui um `Dockerfile` voltado para produção. Exemplo básico:
```bash
docker build -t myrottenpotatoes .
docker run -d -p 80:80 \
  -e RAILS_MASTER_KEY=$(cat config/master.key) \
  --name myrottenpotatoes myrottenpotatoes
```

---

## Estrutura e rotas
- Controlador principal: `MoviesController`
- Views em `app/views/movies/` (`index`, `show`, `new`, `edit` e `_form`)
- Rota raiz: `movies#index`

