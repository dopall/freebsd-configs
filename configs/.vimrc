"#######################################################################
" Einstellungen
set nocompatible        " VIM-Zusätze aktivieren
set encoding=utf8       " UTF8 als Zeichensatz
set mouse=a             " Mausunterstüzung aktivieren
set number              " Zeilennummern angeben
set incsearch           " Zeigt Suchergebnisse während dem Suchen an
set hlsearch            " Suchresultate farbig hervorheben
set ignorecase          " Ignoriert Gross/Kleinschreibung beim Suchen
set smartcase           " Nur Gross/Kleinschreibung beachten, wenn Grossbuchstabe vorhanden
set autoread            " Liest die Datei neu, wenn ausserhalb von VIM geändert.
set backup              " Erstellt eine Backup-Datei
set tabstop=4           " Tabulator entspricht x Leerzeichen
set softtabstop=4       " Weicher Tabulator
set shiftwidth=4        " Einrücktiefe
set autoindent          " Automatisch einrücken
" set expandtab         " Tabulatoren in Spaces umwandeln
set wrap                " Zeilenumbruch aktivieren
" set list              " listchars anzeigen
set listchars=tab:»·,trail:· " Tabs und Leerzeichen am Zeilenende anzeigen

colorscheme default     " Farbschema
syntax on               " Code farbig darstellen

"#######################################################################
" Makros
map <F12> :w!<CR>:!aspell --lang=de check %<CR>:e! %<CR>
map <F5> :w! <CR>:! pdflatex % <CR>

map <F2> i########################################################################<CR><ESC>
map <F3> :r!date +\%Y-\%m-\%d<CR>
map <F4> :r!date +\%Y-\%m-\%d_\%H-\%M-\%S<CR>


" EOF
