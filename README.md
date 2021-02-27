# Rocketpay

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


MAIN COMMANDS:
 * sudo service postgresql start  --- iniciar o postegres
 * sudo chmod -R 777 <diretorio> --- dando permissao total
 * mix phx.new <nome_project> --no-webpack --no-html --- criando o projeto
 * inclui o elixir linter e o elixir ls (desativa o dialyzer e o segest specs)
 * adiciona no arquivo mix a linha:
    * {:credo, "~> 1.5", only: [:dev, :test], runtime: false }
 * no arquivo deps/credo/.credo.exs, altere ModuleDoc - de: [], para: false
 * 
 * mix ecto.create --- criar banco
 * mix ecto.drop --- deletar o banco
 * mix ecto.gen.migration <nome_migration> --- criação de arquivo migration (create_user_table)
 * mic ecto.migrate --- executar a migrate no banco
 * mic ecto.rollback --- reverter a ultima migrate executada com sucesso
 * mix deps.get --- baixar todas as dependencias
 * mix phx.server -- rodar a api
 * mix test --cover --- cobertura de teste padrão
 * mix coveralls.html -- cobertura de teste mais detalhada
 * mix test -- execução de teste automatizado

 * iex -S mix --- abrir o compilador interativo



 * IO.inspect() --- usado para debugar pipes, não altera o valor