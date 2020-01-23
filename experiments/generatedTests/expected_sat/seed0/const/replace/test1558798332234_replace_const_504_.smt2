(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x917 (str.replace "2" "2" "")))
 (= ?x917 "")))
(check-sat)

(get-info :reason-unknown)



