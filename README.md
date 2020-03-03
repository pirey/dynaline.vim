# dynaline.vim

A Dynamic Statusline for your vim.

This plugin allows you to specify different statusline content on different window width.

There are three breakpoints: full, compact, and conceal.

## Installation

Using `vim-plug`:

`Plug 'pirey/dynaline.vim'`

## Options

All available options:

```
let g:dynaline = {
            \ 'skip_filetypes': ['nerdtree'],
            \ 'conceal': 1,
            \ 'conceal_width': 30,
            \ 'conceal_content': '\ ⋯',
            \ 'compact_width': 60,
            \ 'compact_content': '\ %t',
            \ 'content': '',
            \ }
```

#### Full width content

This will be used when window width is bigger than `compact_width`

Default: `let g:dynaline.content = ''`

#### Compact width content

This will be used when window width is smaller than `compact_width`

Default: `let g:dynaline.compact_content = '\ %t'`

#### Compact min width

This will determine when to display `compact_content`

Default: `let g:dynaline.compact_width = 60`

#### Auto conceal statusline

If set to `1`, statusline will be 'concealed' when window width is smaller than `conceal_width`

Default: `let g:dynaline.conceal = l`

#### Conceal content

This will be displayed when window width is smaller than `conceal_width`

Default: `let g:dynaline.conceal_content = '\ ⋯'`


#### Conceal min width

Same as `compact_width`, for conceal

Default: `let g:dynaline.conceal_width = 30`

### Skip rules for specific filetypes

You can specify list of filetypes to ignore

Default: `let g:dynaline.skip_filetypes = ['nerdtree']`


## License

Copyright (c) Pirey.  Distributed under the same terms as Vim itself.
See `:help license`.

