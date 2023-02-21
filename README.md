# Setup

## Bootstrap

* Rodar o `bundle install`

* Rodar o `yarn install`

* Rodar: `./bin/rails css:install:bootstrap`

* Remover a duplicação de `import * as bootstrap from bootstrap` em `app/javascript/application.js`

* Rodar: `./bin/rails javascript:install:esbuild`

## Setup do banco

* Cria, faz a migration o seed: `rails db:setup`

## Rodar o servidor

* `rails s`

## Rodar os testes

* `rspec`

## Usuários do sistema (de acordo com o seeds.rb)

* email: `admin@me.com` | senha: `123456`
* email: `user@me.com` | senha: `123456`