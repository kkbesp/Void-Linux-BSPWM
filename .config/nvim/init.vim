"Плагины
call plug#begin('~/.config/nvim/plug')
    Plug 'scrooloose/nerdtree' "Плагин файловой структуры
    Plug 'ErichDonGubler/vim-sublime-monokai' "Плагин темы
    Plug 'vim-airline/vim-airline' "Плагин кастомной строки состояния
    Plug 'matze/vim-move' "Плагин для быстрого перемещения строк
	Plug 'fatih/vim-go' "Плагин для работы с ЯП Go
    Plug 'honza/vim-snippets' "Плагин сниппитов для многих ЯП
    Plug 'sirver/ultisnips' "Плагин для работы со сниппитами
    Plug 'raimondi/delimitmate' "Плагин для работы с кавычками
call plug#end()

"Настройки
colorscheme sublimemonokai "Установка темы
set number "Включение нумерации строк
set nowrap "Отключить перенос строк
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим
set imsearch=0 "Включение английского языка при поиске
set iminsert=0 "Включение английского языка при вводе
set encoding=UTF-8 "Установка кодировки
set termencoding=utf-8
set tabstop=4 "Настройка табов
set shiftwidth=4
set softtabstop=4
set autoindent "Настройка отступов
set smartindent
set autoread "Автообновление файла
set timeoutlen=500 "Изменение времени ожидания хоткеев
set ttimeoutlen=0
set noswapfile "Отключение swap файлов
set hidden "Что бы vim не ругался на буфер
set hlsearch "Настройки поиска
set incsearch
syntax enable "Включить подсветку синтаксиса

"Настройки Move
let g:move_key_modifier = 'C' "Установка клавиши модификатора [CTRL]

"Настройки NerdeTree
let NERDTreeAutoDeleteBuffer = 1 "Обновлять буфер при изменении файла
let g:NERDTreeDirArrowExpandable = '▸' "Перемещение с помощью стрелок
let g:NERDTreeDirArrowCollapsible = '▾'
"Показать дерево проекта
nnoremap <C-p> :NERDTreeToggle<CR>

"Настройки Airline
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline_section_warning = '' "Отключение раздражителей
let g:airline_section_error = ''
let g:airline_theme='monokai'

"Настройки UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Настройки Delimitmate
let delimitMate_expand_cr = 1 "Отступы по нажатию [ENTER]
let delimitMate_expand_space = 1 "Отступы по нажатия [SPACE]
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>,>:<" "Настройки для HTML
