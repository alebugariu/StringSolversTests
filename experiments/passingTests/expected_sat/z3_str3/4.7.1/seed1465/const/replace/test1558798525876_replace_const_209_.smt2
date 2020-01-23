(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2161 (str.replace "\x07" "a" """a""")))
 (= ?x2161 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
