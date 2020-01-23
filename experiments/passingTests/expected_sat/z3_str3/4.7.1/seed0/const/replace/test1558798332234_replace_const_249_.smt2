(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2362 (str.replace "\x07" "2" """a""")))
 (= ?x2362 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
