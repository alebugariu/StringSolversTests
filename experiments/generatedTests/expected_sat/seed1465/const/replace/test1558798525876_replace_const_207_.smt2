(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2149 (str.replace "\x07" """a""" "2")))
 (= ?x2149 "\x07")))
(check-sat)

(get-info :reason-unknown)



