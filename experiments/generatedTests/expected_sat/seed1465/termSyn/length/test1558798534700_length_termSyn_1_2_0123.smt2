(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str7 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2149 (str.at tmp_str0 tmp_int1)))
 (let ((?x720 (str.len ?x2149)))
 (= ?x720 (str.to.int tmp_str7)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str7 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str7 = 0


