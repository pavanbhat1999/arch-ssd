Vim�UnDo� �X�hZ�^��(�o};=;�ȃQ/�T %���   .                 5       5   5   5    a*2�   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             a)<    �                   �               5��                    F   P                   C      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a)�N     �                  debug = false;5��                          h                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a)�N     �                  min_length = 1;5��                          h                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a)�N     �                  preselect = 'enable';5��                          h                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a)�N     �                  throttle_time = 80;5��                          h                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                  source_timeout = 200;5��                          h                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                  incomplete_delay = 400;5��                          h                      5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                  max_abbr_width = 100;5��                          h                      5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                  max_kind_width = 100;5��                          h                      5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                  max_menu_width = 100;5��                          h                      5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                  documentation = false;5��                          h                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                 5��                          h                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                  source = {5��                          h                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                    path = true;5��                          h                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                    buffer = true;5��                          h                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�O     �                  autocomplete = true;       calc = true;5��                          Q       (               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                 &vim.o.completeopt = "menuone,noselect"5��                                   '               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                 require'compe'.setup {5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                   enabled = true;5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                     vsnip = true;5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                     nvim_lsp = true;5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                     nvim_lua = true;5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                     spell = true;5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                     tags = true;5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                     snippets_nvim = true;5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                     treesitter = true;5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�R     �                   };5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�S     �                 }5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a)�S     �                 local t = function(str)5��                                                  5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             a)�S     �                 >  return vim.api.nvim_replace_termcodes(str, true, true, true)5��                                   ?               5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                             a)�S     �                 end5��                                                  5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             a)�S     �                  5��                                                  5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                       &          V       a)�V     �              &   #local check_back_space = function()   #    local col = vim.fn.col('.') - 1   E    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then           return true       else           return false       end   end       -- Use (s-)tab to:   0--- move to prev/next item in completion menuone   +--- jump to prev/next snippet's placeholder   _G.tab_complete = function()   "  if vim.fn.pumvisible() == 1 then       return t "<C-n>"   6  elseif vim.fn.call("vsnip#available", {1}) == 1 then   +    return t "<Plug>(vsnip-expand-or-jump)"      elseif check_back_space() then       return t "<Tab>"     else   %    return vim.fn['compe#complete']()     end   end   _G.s_tab_complete = function()   "  if vim.fn.pumvisible() == 1 then       return t "<C-p>"   6  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then   &    return t "<Plug>(vsnip-jump-prev)"     else   E    -- If <S-Tab> is not working in your terminal, change it to <C-h>       return t "<S-Tab>"     end   end       Lvim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})   Lvim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})   Pvim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})   Pvim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})5��            &                       �              5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                 V       a)��     �                   �               5��                                         {      5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                 V       a)��    �                  5��                                                  5�_�   $   '           %           ����                                                                                                                                                                                                                                                                                                                                                V       a)��     �                Pinoremap <silent><expr> <CR> compe#confirm({ 'keys': '<CR>', 'select': v:true })�                !let g:compe.source.emoji = v:true�                #let g:compe.source.luasnip = v:true�                %let g:compe.source.ultisnips = v:true�                !let g:compe.source.vsnip = v:true�                $let g:compe.source.nvim_lua = v:true�                $let g:compe.source.nvim_lsp = v:true�                 let g:compe.source.calc = v:true�                "let g:compe.source.buffer = v:true�                 let g:compe.source.path = v:true�                let g:compe.source = {}�                 �                "let g:compe.documentation = v:true�                 let g:compe.max_menu_width = 100�                 let g:compe.max_kind_width = 100�                 let g:compe.max_abbr_width = 100�   
             "let g:compe.incomplete_delay = 400�   	             !let g:compe.resolve_timeout = 800�      
           let g:compe.source_timeout = 200�      	          let g:compe.throttle_time = 80�                 let g:compe.preselect = 'enable'�                let g:compe.min_length = 1�                let g:compe.debug = v:false�                !let g:compe.autocomplete = v:true�                let g:compe.enabled = v:true�                let g:compe = {}�                  set completeopt=menuone,noselect5��                        "                   "       �                         #                     �                         6                     �               !       #   U       !       #       �                         y                     �                         �                     �                       "   �               "       �                          �                      �                       "   �               "       �    	           !       #         !       #       �    
           "       $   ?      "       $       �                       "   d              "       �                       "   �              "       �                       "   �              "       �               "       $   �      "       $       �                           �                      �                         �                    �                       "                 "       �               "       $   0      "       $       �                       "   U              "       �               $       &   x      $       &       �               $       &   �      $       &       �               !       #   �      !       #       �               %       '   �      %       '       �               #       %         #       %       �               !       #   8      !       #       �               P       R   \      P       R       5�_�   %   (   &       '           ����                                                                                                                                                                                                                                                                                                                                                V       a)��    �                  �               �                 R--inoremap <silent><expr> <CR> compe#confirm({ 'keys': '<CR>', 'select': v:true })    �                 --�               5��                          �                     �                          �                     �       R                  �                     �       R                 �                     �                        �                     �                        �                     �                        �                     �                          �                     �                          �              !      5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                       ?          V       a)��     �              ?   "--set completeopt=menuone,noselect   --let g:compe = {}   --let g:compe.enabled = v:true   #--let g:compe.autocomplete = v:true   --let g:compe.debug = v:false   --let g:compe.min_length = 1   "--let g:compe.preselect = 'enable'    --let g:compe.throttle_time = 80   "--let g:compe.source_timeout = 200   #--let g:compe.resolve_timeout = 800   $--let g:compe.incomplete_delay = 400   "--let g:compe.max_abbr_width = 100   "--let g:compe.max_kind_width = 100   "--let g:compe.max_menu_width = 100   $--let g:compe.documentation = v:true       --let g:compe.source = {}   "--let g:compe.source.path = v:true   $--let g:compe.source.buffer = v:true   "--let g:compe.source.calc = v:true   &--let g:compe.source.nvim_lsp = v:true   &--let g:compe.source.nvim_lua = v:true   #--let g:compe.source.vsnip = v:true   '--let g:compe.source.ultisnips = v:true   %--let g:compe.source.luasnip = v:true   #--let g:compe.source.emoji = v:true   R--inoremap <silent><expr> <CR> compe#confirm({ 'keys': '<CR>', 'select': v:true })   --   --   --   require'compe'.setup {     enabled = true;     autocomplete = true;     debug = false;     min_length = 1;     preselect = 'enable';     throttle_time = 80;     source_timeout = 200;     resolve_timeout = 800;     incomplete_delay = 400;     max_abbr_width = 100;     max_kind_width = 100;     max_menu_width = 100;     documentation = {   m    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`   Y    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",       max_width = 120,       min_width = 60,   /    max_height = math.floor(vim.o.lines * 0.3),       min_height = 1,     };         source = {       path = true;       buffer = true;       calc = true;       nvim_lsp = true;       nvim_lua = true;       vsnip = true;       ultisnips = true;       luasnip = true;     };   }5��            ?                       �              5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                                                 V       a)��     �                   �               5��                    ?                       �      5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                       @           V        a)��     �              @   "--set completeopt=menuone,noselect   --let g:compe = {}   --let g:compe.enabled = v:true   #--let g:compe.autocomplete = v:true   --let g:compe.debug = v:false   --let g:compe.min_length = 1   "--let g:compe.preselect = 'enable'    --let g:compe.throttle_time = 80   "--let g:compe.source_timeout = 200   #--let g:compe.resolve_timeout = 800   $--let g:compe.incomplete_delay = 400   "--let g:compe.max_abbr_width = 100   "--let g:compe.max_kind_width = 100   "--let g:compe.max_menu_width = 100   $--let g:compe.documentation = v:true       --let g:compe.source = {}   "--let g:compe.source.path = v:true   $--let g:compe.source.buffer = v:true   "--let g:compe.source.calc = v:true   &--let g:compe.source.nvim_lsp = v:true   &--let g:compe.source.nvim_lua = v:true   #--let g:compe.source.vsnip = v:true   '--let g:compe.source.ultisnips = v:true   %--let g:compe.source.luasnip = v:true   #--let g:compe.source.emoji = v:true   R--inoremap <silent><expr> <CR> compe#confirm({ 'keys': '<CR>', 'select': v:true })   --   --   --   require'compe'.setup {     enabled = true;     autocomplete = true;     debug = false;     min_length = 1;     preselect = 'enable';     throttle_time = 80;     source_timeout = 200;     resolve_timeout = 800;     incomplete_delay = 400;     max_abbr_width = 100;     max_kind_width = 100;     max_menu_width = 100;     documentation = {   m    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`   Y    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",       max_width = 120,       min_width = 60,   /    max_height = math.floor(vim.o.lines * 0.3),       min_height = 1,     };         source = {       path = true;       buffer = true;       calc = true;       nvim_lsp = true;       nvim_lua = true;       vsnip = true;       ultisnips = true;       luasnip = true;     };   }    5��            @                       �              5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                  V        a)��     �                   �               5��                                          q      5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                  V        a)�    �                   �               �               5��                          r                     �                  	      t              �       5�_�   ,   /           -          ����                                                                                                                                                                                                                                                                                                                                                             a)��    �                   �               5��                          !                     �                         #                     5�_�   -   0   .       /            ����                                                                                                                                                                                                                                                                                                                                                             a*H     �                    �   !            �                5��                           %                     �                          '              r      5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                             a*    �         0       �          /       �         /    �          .    5��                                                  �                                           '       �        &                  &                      5�_�   0   2           1   .        ����                                                                                                                                                                                                                                                                                                                                                             a*,@     �   -   .          }5��    -                      �                     5�_�   1   3           2   .        ����                                                                                                                                                                                                                                                                                                                                                             a*,A     �   -   .           5��    -                      �                     5�_�   2   4           3   -        ����                                                                                                                                                                                                                                                                                                                                                             a*,A     �   ,   -            capabilities = capabilities,5��    ,                      �                     5�_�   3   5           4   ,        ����                                                                                                                                                                                                                                                                                                                                                             a*,C   	 �   +   ,          (require'lspconfig'.rust_analyzer.setup {5��    +                      v      )               5�_�   4               5   "        ����                                                                                                                                                                                                                                                                                                                            "          +           V       a*2�   
 �   !            �   !            �   !   "       
   B  local capabilities = vim.lsp.protocol.make_client_capabilities()   Icapabilities.textDocument.completion.completionItem.snippetSupport = true   Fcapabilities.textDocument.completion.completionItem.resolveSupport = {     properties = {       'documentation',       'detail',       'additionalTextEdits',     }   }    5��    !       
               L      *              �    !                      L              r      5�_�   -           /   .          ����                                                                                                                                                                                                                                                                                                                                                             a)��     �                 5��                                               �                                               5�_�   %           '   &           ����                                                                                                                                                                                                                                                                                                                                                V       a)��    �                --�              �             "   --require'compe'.setup {     enabled = true;     autocomplete = true;     debug = false;     min_length = 1;     preselect = 'enable';     throttle_time = 80;     source_timeout = 200;     resolve_timeout = 800;     incomplete_delay = 400;     max_abbr_width = 100;     max_kind_width = 100;     max_menu_width = 100;     documentation = {   m    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`   Y    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",       max_width = 120,       min_width = 60,   /    max_height = math.floor(vim.o.lines * 0.3),       min_height = 1,     };         source = {       path = true;       buffer = true;       calc = true;       nvim_lsp = true;       nvim_lua = true;       vsnip = true;       ultisnips = true;       luasnip = true;     };   }    5��                          �                     �                  !       �              "      5��