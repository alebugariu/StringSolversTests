(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1316 (str.replace """a""" """a""" "\n")))
 (= ?x1316 "\n")))
(check-sat)

(get-info :reason-unknown)



