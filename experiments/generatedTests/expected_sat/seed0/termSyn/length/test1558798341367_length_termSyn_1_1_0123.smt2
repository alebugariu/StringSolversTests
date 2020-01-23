(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str7 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2680 (str.at tmp_str0 tmp_int1)))
 (let ((?x779 (str.len ?x2680)))
 (= ?x779 (str.len tmp_str7)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str7 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str7 = 


