(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2388 (str.replace tmp_str0 "\x07" "0")))
 (= ?x2388 "2")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = 2


