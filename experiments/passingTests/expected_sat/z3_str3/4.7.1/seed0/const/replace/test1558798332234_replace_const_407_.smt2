(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1937 (str.replace "0" "a" "2")))
 (= ?x1937 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
