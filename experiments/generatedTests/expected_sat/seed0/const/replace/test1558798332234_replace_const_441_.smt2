(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2027 (str.replace "0" "2" """a""")))
 (= ?x2027 "0")))
(check-sat)

(get-info :reason-unknown)



