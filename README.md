# script-fedora

Esse script foi criado para automatizar a instalação e atualização do fedora

`OBS: Caso você não tenha experiência com linux, saiba que o fedora é uma distro difícil para iniciantes` 

### Apps

* Lista de apps
	* `Osu lazer`
	* `Steam`
	* `Gnome-tweaks`
	* `Discord`
	* `Krita`
	* `Prism launcher (Minecraft)`
	* `Xp pen (Opicional)`

### Instruções de uso

Para rodar o script principal basta utilizar o comando:

```
./script.sh
```
Caso queira instalar apps adicionais, existem os seguintes parâmetros:

* Lista de parâmetros   
	* `--xppen`
	
Como exemplo ficaria:

```
./script.sh --xppen
```

### Instalação drivers nvidia

Para rodar o script da instalação do driver basta utilizar o comando:

```
./install-nvidia-drivers
```

Quando a instação terminar espere algum tempo para compilar os binários

Para verificar se a compilação foi terminada basta digitar:
```
watch -n 1 'ps -A | grep akmod'
```
`OBS: Caso você não estiver vendo nenhum processo rodando como na print abaixo, quer dizer que pode-se reiniciar com sucesso`
![print](https://testamento.s3.sa-east-1.amazonaws.com/Screenshot+from+2024-03-27+23-54-16.png)

