(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1185 (str.replace tmp_str0 "\x07" "\x07")))
 (= ?x1185 "0")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = 0


