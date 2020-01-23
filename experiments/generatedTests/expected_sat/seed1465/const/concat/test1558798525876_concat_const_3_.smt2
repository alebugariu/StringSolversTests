(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x214 (str.++ "" "\x07")))
 (= ?x214 "\x07")))
(check-sat)

(get-info :reason-unknown)



