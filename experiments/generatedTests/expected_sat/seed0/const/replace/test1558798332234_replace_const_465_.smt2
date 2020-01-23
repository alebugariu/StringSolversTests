(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1945 (str.replace "2" "a" """a""")))
 (= ?x1945 "2")))
(check-sat)

(get-info :reason-unknown)



