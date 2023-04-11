# Mis .dotfiles

## Instalación

Instalar el gestor para las configuraciones `stow`

### Instalar stow

#### debian / ubuntu

```bash
sudo apt install stow
```

#### red hat / fedora

```bash
sudo dnf install stow
```

### Clonar repositorio .dorfiles

Clonar el repositorio `.dorfiles` en el directorio home del usuario.

```bash
cd ~
```

```bash
git clone https://github.com/GorillaTi/.dotfiles.git
```

## Uso

Nos situamos el en directorio `.dotfiles`

```bash
cd .dorfiles
```

### Prueba

Para probar el futuro enlace de configuración ejecutamos.

```bash
stow -nv zsh
```

> **Nota.-** 
> 
> El parámetro `n` emula la creación del enlace.
> 
> El parámetro `v` muestra las acciones realizadas para la creación del enlace.
> 
> `zah` el directorio de configuración dentro de .dotfiles

### Definitiva

Para generar el enlace definitivo de configuración se ejecuta:

```bash
stow -v zsh
```
