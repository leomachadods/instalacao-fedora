# fedorante-script

Esse script foi criado para automatizar a instalação de alguns apps no fedora de acordo como meu gosto.

### Instruções de uso

primero remova a senha do sudo

Não se esqueçar de substituir "username" pelo seu nome de usuário

```
sudo passwd -d username
```
Para rodar o script basta digitar no bash ou zsh:

```
./fedorante.sh
```
Inclusive temos dois parâmetros que podem ser passados:

* Lista de parâmetros   
	* `--xppen`
	* `--reboot`

Como exemplo ficaria:

```
./ fedorante.sh --xppen --reboot
```

