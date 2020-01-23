(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1945 (str.replace "a" "0" """a""")))
 (= ?x1945 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
