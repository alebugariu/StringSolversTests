(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2823 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1459 (str.len tmp_str0)))
 (let ((?x1466 (str.at tmp_str0 tmp_int1)))
 (let ((?x222 (str.at ?x1466 ?x1459)))
 (= ?x222 ?x2823))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = 5494
;String tmp_str0 = \x00
