(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x935 (str.replace "" "\x07" "a")))
 (= ?x935 "")))
(check-sat)

(get-info :reason-unknown)



