(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1394 (str.replace """a""" "a" "\n")))
 (= ?x1394 """\n""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
