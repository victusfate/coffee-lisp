(defun Y (f) 
    ((lambda (x) (funcall x x)) 
        (lambda (y) 
            (funcall f (lambda (&rest args) 
                (apply (funcall y y) args))))))
     
(defun fac (f) 
    (lambda (n) 
        (if (zerop n) 
            1 
            (* n (funcall f (1- n))))))

; to call
; (funcall (Y #'fac) 5)


; to create an exec load all required lisp files then
; (sb-ext:save-lisp-and-die "my_binary" :executable t :toplevel 'main-program-function)
