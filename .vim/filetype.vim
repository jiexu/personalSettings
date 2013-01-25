if exists("did_load_filetypes")
          finish
        endif
        augroup filetypedetect
          au! BufRead,BufNewFile *.sv    setf sv
          au! BufRead,BufNewFile *.svi   setf sv
        augroup END 
