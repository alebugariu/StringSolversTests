(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1089 (str.replace tmp_str0 "0" """a""")))
 (= ?x1089 "\x07")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = 


;actual status: unknown
