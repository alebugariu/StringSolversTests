(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let (($x2082 (str.prefixof tmp_str0 """a""")))
 (= $x2082 true)))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = 


