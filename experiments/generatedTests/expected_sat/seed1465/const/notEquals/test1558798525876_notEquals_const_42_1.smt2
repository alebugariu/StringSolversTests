(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let (($x1988 (= "0" tmp_str1)))
 (= $x1988 false)))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = 


