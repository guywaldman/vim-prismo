# Prismo for Vim

![Screencapture](/resources/screencapture.gif?raw=true "Screencapture")

Decorate section titles and separators in your code with ease using vim-prismo. This vim plugin centers your title beautifully and finally gives your OCD a well-deserved break.

# Current state

`vim-prismo` was originally designed for much more, but for right now I'm settling for beautifying my inline comments. It is inspired by my previous plugin for Atom, [AutoSect](https://github.com/guywald1/auto-sect). I am a _vim-script_ beginner and would be very open and excited for ideas and pull requests.

# TODO

- [ ] Indentation-aware (coming soon)

- [ ] Decoration pattern explicit declaration

  (meaning you would write: `// ~ title`, and it would expand to `// ~~~~ TITLE ~~~~`

# Installation

## Pathogen

```bash
$ cd ~/.vim/bundle
$ git clone https://github.com/guywald1/vim-prismo/
```
> Alternatively, `$ cd ~/.janus` if you're using [vim-janus](https://github.com/carlhuda/janus) like me (you totally should).

## Vundle

Add...

```vim-script
Plugin 'guywald1/vim-prismo'
```

...between `call vundle#begin()` and `call vundle#end()` in your `.vimrc`.

# Usage

Type the beginning of your inline comment, followed by a space, followed by your desired title. i.e. `// your title here.`

Call `:Prismo` and it will then become: `// ------------- YOUR TITLE HERE -------------` (but spanning 80 characters wide - this is only for demonstration purposes).

> **Note**: The inline comment style does not have to be `//`. As long as it a continuous sequence of characters, any inline comment style will do. For example, for BASH: `# title` will transform to `# ------ TITLE ------`.

The plugin will, by default, convert the title to uppercase.

# Customization

Recommended mapping:

```vim-script
:nnoremap <leader>pr :Prismo<CR>
```

## Settings

These are all customizable inside of your `.vimrc`:

```vim-script
let g:prismo_dash = '-' " the character to pad the title (dash by default)
let g:prismo_ruler = 80 " the rightmost edge to span your title
let g:prismo_toupper = 1 " whether to transform the title to uppercase
```
# Contributions

...are absolutely welcome! 😊
