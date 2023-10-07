Installation guide is made for MacOS

## Kitty
My preferred terminal is [Kitty](https://sw.kovidgoyal.net/kitty/)
```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

## Fonts
To view installed fonts : 
``` 
kitty list-fonts 
```

To install fonts
```
./fonts/install
```

## Theme
The currently selected theme is [One Dark](https://github.com/GiuseppeCesarano/kitty-theme-OneDark). To change the theme :
```
kitty +kitten themes
```

## Tmux
```
brew install tmux
brew install fzf
```

## Misc
Required for vim-telescope
```
brew install ripgrep
```
