(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let (($x1918 (str.contains "\x07" tmp_str1)))
 (= $x1918 true)))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = 


