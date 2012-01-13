let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +12 static/index.html
badd +1 data/organizations/all.js
badd +1 data/organizations/1.js
badd +1 data/organizations/2.js
badd +0 data/organizations/3.js
badd +0 data/organizations/4.js
badd +0 data/organizations/5.js
badd +0 static/master-detail.html
badd +37 static/organizations/kn-helper.js
badd +0 static/knockout-2.0.0.debug.js
badd +1 at\ Object.\<anonymous>\ (/Users/philip/Projects/webmvc/static/organizations/kn-helper.js
args ~/Projects/webmvc/static/index.html
edit static/index.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 12 + 48) / 97)
exe 'vert 1resize ' . ((&columns * 107 + 107) / 214)
exe '2resize ' . ((&lines * 82 + 48) / 97)
exe 'vert 2resize ' . ((&columns * 107 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 106 + 107) / 214)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Projects/webmvc/static
wincmd w
argglobal
edit ~/Projects/webmvc/static/organizations/kn-helper.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal zo
17
normal zo
1
normal zo
let s:l = 1 - ((0 * winheight(0) + 41) / 82)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 025l
lcd ~/Projects/webmvc/static/organizations
wincmd w
argglobal
edit ~/Projects/webmvc/static/master-detail.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 62 - ((61 * winheight(0) + 47) / 95)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
62
normal! 03l
lcd ~/Projects/webmvc/static
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 12 + 48) / 97)
exe 'vert 1resize ' . ((&columns * 107 + 107) / 214)
exe '2resize ' . ((&lines * 82 + 48) / 97)
exe 'vert 2resize ' . ((&columns * 107 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 106 + 107) / 214)
tabedit ~/Projects/webmvc/static/knockout-2.0.0.debug.js
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
5
normal zo
18
normal zo
18
normal zo
921
normal zo
943
normal zo
1023
normal zo
1023
normal zo
1059
normal zo
1097
normal zo
1110
normal zo
1097
normal zo
1059
normal zo
1170
normal zo
1235
normal zo
1238
normal zo
1235
normal zo
1170
normal zo
1312
normal zo
1348
normal zo
1348
normal zo
1434
normal zo
1312
normal zo
1483
normal zo
1509
normal zo
1540
normal zo
1550
normal zo
1550
normal zo
1483
normal zo
2033
normal zo
2033
normal zo
2185
normal zo
2280
normal zo
2281
normal zo
2281
normal zo
2280
normal zo
2669
normal zo
2686
normal zo
2686
normal zo
2669
normal zo
2893
normal zo
2929
normal zo
2893
normal zo
2976
normal zo
2987
normal zo
2987
normal zo
2976
normal zo
3143
normal zo
3143
normal zo
5
normal zo
let s:l = 415 - ((47 * winheight(0) + 47) / 95)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
415
normal! 0
lcd ~/Projects/webmvc/static
3wincmd w
tabedit ~/Projects/webmvc/data/organizations/all.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 88 + 107) / 214)
exe '2resize ' . ((&lines * 11 + 48) / 97)
exe 'vert 2resize ' . ((&columns * 125 + 107) / 214)
exe '3resize ' . ((&lines * 11 + 48) / 97)
exe 'vert 3resize ' . ((&columns * 125 + 107) / 214)
exe '4resize ' . ((&lines * 10 + 48) / 97)
exe 'vert 4resize ' . ((&columns * 125 + 107) / 214)
exe '5resize ' . ((&lines * 11 + 48) / 97)
exe 'vert 5resize ' . ((&columns * 125 + 107) / 214)
exe '6resize ' . ((&lines * 48 + 48) / 97)
exe 'vert 6resize ' . ((&columns * 125 + 107) / 214)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 47) / 95)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Projects/webmvc/data/organizations
wincmd w
argglobal
edit ~/Projects/webmvc/data/organizations/1.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 051l
lcd ~/Projects/webmvc/data/organizations
wincmd w
argglobal
edit ~/Projects/webmvc/data/organizations/2.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 049l
lcd ~/Projects/webmvc/data/organizations
wincmd w
argglobal
edit ~/Projects/webmvc/data/organizations/3.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 053l
lcd ~/Projects/webmvc/data/organizations
wincmd w
argglobal
edit ~/Projects/webmvc/data/organizations/4.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 047l
lcd ~/Projects/webmvc/data/organizations
wincmd w
argglobal
edit ~/Projects/webmvc/data/organizations/5.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Projects/webmvc/data/organizations
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 88 + 107) / 214)
exe '2resize ' . ((&lines * 11 + 48) / 97)
exe 'vert 2resize ' . ((&columns * 125 + 107) / 214)
exe '3resize ' . ((&lines * 11 + 48) / 97)
exe 'vert 3resize ' . ((&columns * 125 + 107) / 214)
exe '4resize ' . ((&lines * 10 + 48) / 97)
exe 'vert 4resize ' . ((&columns * 125 + 107) / 214)
exe '5resize ' . ((&lines * 11 + 48) / 97)
exe 'vert 5resize ' . ((&columns * 125 + 107) / 214)
exe '6resize ' . ((&lines * 48 + 48) / 97)
exe 'vert 6resize ' . ((&columns * 125 + 107) / 214)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
