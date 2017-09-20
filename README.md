# MySoufflé
### Repository for the DataBase of FoodSQL application

O projeto trata-se de uma plataforma (Mobile ou Web) que entrega a seus usuários acesso rápido e fácil à receitas! Todos podem cozinhar! Receitas diferentes no dia a dia!

As features do projeto serão:
- base de receitas
- interface de acesso fácil
- função dispensa (Ficando de olho no que tem em casa)
- função de receita de hoje (Uma receita sugerida, baseada nas receitas anteriores e em sua dispensa)
- pesquisas simples (por ingredientes, por nome do prato, [...] )


### SETUP
Execute o script `schema00.sql`, seguido do `user.sql` como root no seu MySQL. PRO TIP: utilize o MySQL Workbench para isso.

Em seguida, se estiver utilizando Linux ou OSX, altere o seu arquivo de configuração do MySQL para desabilitar o modo de `only_full_group_by`. No Ubuntu 17.x o arquivo se encontra em `/etc/mysql/my.cnf`, no OSX ele se encontra em `/usr/local/opt/mysql/my.cnf`.

Para isso, adicione as seguintes linhas no arquivo descrito acima e reinicie o serviço:

```
[mysqld]
sql_mode = "STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"
```

Para reiniciar o serviço, utilize `sudo service mysql restart` no Ubuntu ou `brew services restart mysql` para o OSX.
