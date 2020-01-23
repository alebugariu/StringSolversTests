(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x926 (str.substr "\x07" 0 2)))
 (= ?x926 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
