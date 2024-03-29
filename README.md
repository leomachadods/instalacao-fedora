# script-fedora

Esse script foi criado para automatizar a instalação e atualização do fedora

`OBS: Caso você não tenha experiência com linux,
 saiba que o fedora é uma distro difícil para iniciantes` 

Versões testadas e suportadas: `39+`

---

### Configurações recomendadas (Opcional)

Notei que não fazer certas configurações, deixou a velocidade do terminal muito a desejar, por isso estou incluindo a configuração abaixo, para aumentar bastante a performance

A configuração terá que ser feita no seguinte arquivo
`/etc/dnf/dnf.conf`

Para acessar, digite o seguinte comando no terminal:

```
sudo nano /etc/dnf/dnf.conf
```

Cole dentro do arquivo as seguintes linhas:
```
fastestmirror=True
max_parallel_downloads=10
defaultyes=True
keepcache=True
```
---
### Apps

* Lista de apps de usuário
	* `Osu lazer`
	* `Steam`
	* `Discord`
	* `Visual studio code`
	* `Krita`
	* `Prism launcher 'minecraft'`
	* `Xp pen (Opcional)`
	* `Open tablet driver (Opcional)`
>
* Lista de apps do sistema
	* `Extension manager`
	* `Gnome-tweaks`
	* `Codecs de áudio`

### Instruções de uso

Primeiramente, utilize o comando para clonar o repo:

```
git clone https://github.com/leomachadods/instalacao-fedora.git
```

Para rodar o script principal basta utilizar o comando:

```
cd instalacao-fedora
./script.sh
```
Caso queira instalar apps adicionais, existem os seguintes parâmetros:

* Lista de parâmetros   
	* `--xppen`
	* `--opentablet`
	
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

# Correção de bugs

Um bug que já me ocorreu no fedora é que o google chrome estava gerando vários glitches devido ao comportamento do wayland com os drivers nvidia, mas a correção é simples

* Abra o seu navegador
* Digite `chrome://flags/`
* Pesquise `Preferred Ozone platform`
* Mude de `Default` para `Auto`

`OBS: Caso o problema persista`
`Faça logout e mude o sistema para iniciar com o gnome Xorg`

Pronto agora está resolvido :D
