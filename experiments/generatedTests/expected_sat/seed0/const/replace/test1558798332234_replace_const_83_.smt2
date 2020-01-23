(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1383 (str.replace """a""" "a" "\x07")))
 (= ?x1383 """\x07""")))
(check-sat)

(get-info :reason-unknown)



