(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1925 (str.replace "-1" "0" "-1")))
 (= ?x1925 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
