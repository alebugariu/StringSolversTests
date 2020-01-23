(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2143 (str.replace "\x07" """a""" "0")))
 (= ?x2143 "\x07")))
(check-sat)

(get-info :reason-unknown)



