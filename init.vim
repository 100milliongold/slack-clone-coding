set mouse=a
set nu
set encoding=UTF-8
set clipboard=unnamed
let mapleader=","
let g:python3_host_prog = '/usr/local/bin/python'
setlocal shortmess+=c

call plug#begin()
" This is where we will add plugins to install
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-which-key'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/coc.nvim',{'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'neoclide/npm.nvim', {'do' : 'npm install'}
Plug 'preservim/nerdcommenter'
Plug 'ekalinin/Dockerfile.vim'
Plug 'puremourning/vimspector'
Plug 'liuchengxu/vista.vim'
Plug 'mhinz/vim-startify'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'html'] }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'

" 버퍼 닫으면 빔이 종료안되게
Plug 'qpkorr/vim-bufkill'


" 탭 관리
Plug 'kien/tabman.vim'
" color
" Plug 'lifepillar/vim-solarized8'


" 태그
Plug 'vim-scripts/taglist.vim'
call plug#end()


" tabman-vim START
let g:tabman_toggle = '<leader>ot'
let g:tabman_focus  = '<leader>of'
let g:tabman_width = 15
let g:tabman_side = 'left'
let g:tabman_specials = 1
let g:tabman_number = 1
" tabman-vim END 



" dense-analysis/ale START
let g:ale_linters = { 
\       'javascript': ['eslint'],	
\	'typescript': ['eslint', 'tsserver', 'typecheck']
\}


" dense-analysis/ale END



" vimspector START
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
" vimspector END

" cool retro term 에서 블록 선택 색상 보이기
set termguicolors

" color setting
" set background=dark
" let g:solarized_use16=1
" set background=dark
" autocmd vimenter * ++nested colorscheme solarized8
" Set to light for a light variant

" prettier/vim-prettier START
let g:prettier#autoformat_config_files = ["~/git/slack-clone-coding/prettier.json"]
" prettier/vim-prettier END




"vim-floaterm Start
hi Floaterm guibg=black
hi FloatermBorder guibg=orange guifg=cyan
hi FloatermNC guifg=gray
"vim-floaterm END



" vim-startify start
                                                                                                   
let g:startify_custom_header = [
			\'                                                 ',
			\'                                                 ',
			\'                                                 ',
			\'                   ████████████                  ',
			\'           ████  ██            ██                ',
			\'         ██    ██                ██              ',
			\'           ██                    ██              ',
			\'           ██        ░░░░░░░░    ██              ',
			\'             ██░░░░░░░░░░░░░░░░  ░░██            ',
			\'             ██░░██░░░░██░░░░░░░░░░██            ',
			\'     ██      ██░░██░░░░██░░░░░░░░██              ',
			\'   ██░░████████░░░░░░░░░░░░██░░░░████            ',
			\' ██░░░░▓▓▓▓▓▓  ██░░████████░░░░██  ▓▓████        ',
			\' ██░░░░▓▓▓▓▓▓▓▓  ██░░░░░░░░░░██  ▓▓▓▓▓▓▓▓██      ',
			\' ██░░░░▓▓▓▓▓▓▓▓▓▓  ██████████  ▓▓▓▓▓▓▓▓▓▓██      ',
			\'   ████████████▓▓▓▓          ▓▓▓▓██▓▓▓▓▓▓▓▓██    ',
			\'               ██▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓██████▓▓▓▓██    ',
			\'               ██▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓████░░░░░░██    ',
			\'               ██▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓████░░░░░░██    ',
			\'               ██                ██  ██████      ',
			\'             ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██            ',
			\'           ██▓▓▓▓▓▓▓▓▓▓██▓▓▓▓▓▓▓▓▓▓▓▓██          ',
			\'         ████▓▓▓▓▓▓▓▓██  ██▓▓▓▓▓▓▓▓▓▓████        ',
			\'     ████░░░░░░░░░░██      ██▓▓▓▓▓▓▓▓░░░░████    ',
			\'   ██░░░░░░░░░░░░░░██      ██░░░░░░░░░░░░░░░░██  ',
			\'   ██████████████████      ████████████████████  ',
			\'                                                 ',
			\'                                                 ',
			\'░░      ░░            ░░      ░░            ░░   '
\ ]

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
" vim-startify end

" vista Start
map <F8> :Vista<CR>
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'
let g:vista#executives = ['coc', 'ctags', 'lcn', 'vim_lsp']

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ 'typescriptreact': 'coc',
  \ 'typescript' : 'coc',
  \ 'javascriptreact' : 'coc'
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
" vista END


" vim-which-key START
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey ','<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ','<CR>

let g:which_key_map =  {}
let g:which_key_sep = ': '
" Set a shorter timeout, default is 1000
set timeoutlen=100

let g:which_key_use_floating_win = 1

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'       			 , 'comment' ]
let g:which_key_map['f'] = [ ':Files'                          			 , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                          			 , 'split below']
let g:which_key_map['S'] = [ ':Startify'                       			 , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                             			 , 'search text' ]
let g:which_key_map['E'] = [ ':SSave'                          			 , 'save session']
let g:which_key_map['L'] = [ ':SLoad'                          			 , 'load session']
let g:which_key_map['l'] = [ ':Limelight!!'                     		 , 'limelight']
let g:which_key_map['r'] = [ ':RnvimrToggle'                    		 , 'ranger' ]
let g:which_key_map['g'] = [ ':FloatermNew --height=0.9 --width=0.8 lazygit'     , 'git']
let g:which_key_map['t'] = [ ':FloatermNew --height=0.6 --width=0.8 '            , 'terminal']
let g:which_key_map['v'] = [ '<C-W>v'                          			 , 'split right']
let g:which_key_map['r'] = [ ':CocCommand tsserver.restart' 			 , 'Coc tsserver restart']
let g:which_key_map['m'] = [ ':FloatermNew --height=0.9 --width=0.9 mc' , '파일매니저']

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'                 , 'history'],
      \ ';' : [':Commands'                 , 'commands'],
      \ 'a' : [':Ag'                       , 'text Ag'],
      \ 'b' : [':BLines'                   , 'current buffer'],
      \ 'B' : [':Buffers'                  , 'open buffers'],
      \ 'c' : [':Commits'                  , 'commits'],
      \ 'C' : [':BCommits'                 , 'buffer commits'],
      \ 'f' : [':Files'                    , 'files'],
      \ 'h' : [':History'                  , 'file history'],
      \ 'H' : [':History:'                 , 'command history'],
      \ 'l' : [':Lines'                    , 'lines'] ,
      \ 'm' : [':Marks'                    , 'marks'] ,
      \ 'M' : [':Maps'                     , 'normal maps'] ,
      \ 'p' : [':Helptags'                 , 'help tags'] ,
      \ 'P' : [':Tags'                     , 'project tags'],
      \ 's' : [':CocList snippets'         , 'snippets'],
      \ 'S' : [':Colors'                   , 'color schemes'],
      \ 't' : [':Rg'                       , 'Rg text'],
      \ 'T' : [':BTags'                    , 'buffer tags'],
      \ 'w' : [':Windows'                  , 'search windows'],
      \ 'y' : [':Filetypes'                , 'file types'],
      \ 'z' : [':FZF'                      , 'FZF'],
      \ }

" P is for vim-plug
let g:which_key_map.P = {
      \ 'name' : '+plug' ,
      \ 'i' : [':PlugInstall'              , 'install'],
      \ 'u' : [':PlugUpdate'               , 'update'],
      \ 'c' : [':PlugClean'                , 'clean'],
      \ 's' : [':source ~/.config/nvim/init.vim', 'source vimrc'],
      \ }

" Register which key map
call which_key#register(',', "g:which_key_map")
" vim-which-key END

" mark down priview

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" for path with space
" valid: `/path/with\ space/xxx`
" invalid: `/path/with\\ space/xxx`
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or empty for random
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is define according to the preferences of the system
let g:mkdp_theme = 'dark'

" mark down priview end



" NERD Commenter start

" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
map <Leader>cc <plug>NERDComToggleComment
map <Leader>c<space> <plug>NERDComComment

" NERD Commenter end

" tags
let g:Tlist_Use_Right_Window = 1
"분할 창을 오른쪽에 배치
let g:Tlist_Inc_Winwidth = 0
"콘솔창에서 vim 사용하기
let g:Tlist_Auto_Open = 1
"vi 실행시 TagList 자동실행


" prettier/vim-prettier start
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
let g:prettier#autoformat_config_files = ["~/git/slack-clone-coding/prettier.json"]
" prettier/vim-prettier end



" vim-jsx-pretty start
let g:vim_jsx_pretty_colorful_config = 1
" vim-jsx-pretty endt

" COC config start
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>i :CocCommand tsserver.organizeImports<cr>

" key mappings example
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" COC config end

" gitgutter start
set signcolumn=yes

nmap ]h <Plug>(GitGutterNextHunk) "same as default
nmap [h <Plug>(GitGutterPrevHunk) "same as default

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
let g:coc_confing_home = '~/git/slack-clone-coding/coc-settings.json'
" gitgutter end



" NerdTree start
map <F7> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
"// put this in your .vimrc
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
"// Nerdtree config for wildignore
let NERDTreeRespectWildIgnore=1

let g:NERDTreeMouseMode=3
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "ModCocList marketplaceified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
let NERDTreeMapOpenInTab='\r'
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" NerdTree end




" vim-airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1              " vim-airline 버퍼 목록 켜기
let g:airline#extensions#tabline#fnamemod = ':t'          " vim-airline 버퍼 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1       " buffer number를 보여준다
let g:airline#extensions#tabline#buffer_nr_format = '%s:' " buffer number format

" ALE settings start
" ALE settings
" use ale as a deoplete source
let g:ale_completion_enabled = 1

" fix on save
let g:ale_fix_on_save = 1

" use eslint, prettier, and stylelint
let g:ale_fixers = {
      \    'javascript': ['eslint', 'prettier'],
      \    'typescript': ['eslint', 'prettier'],
      \    'css': ['stylelint', 'prettier'],
      \    'html': ['prettier']
      \}

" use eslint for ts and js
let g:ale_linters = {
      \    'typescript': [ 'eslint' ],
      \    'javascript': [ 'eslint' ]
      \}
" ALE settings end



