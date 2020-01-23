(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x983 (str.replace "" "\n" """a""")))
 (= ?x983 "")))
(check-sat)

(get-info :reason-unknown)



