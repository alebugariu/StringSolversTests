(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x143 (str.replace "0" "" "\x07")))
 (= ?x143 "\x070")))
(check-sat)

(get-info :reason-unknown)



