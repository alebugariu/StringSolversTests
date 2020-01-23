(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2643 (str.substr tmp_str0 tmp_int6 tmp_int6)))
 (let ((?x92 (str.to.int tmp_str0)))
 (let ((?x2795 (int.to.str ?x92)))
 (= ?x2795 ?x2643)))))
(check-sat)

(get-value (tmp_str0 tmp_int6 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1


;actual status: sat

;model:
;Int tmp_int6 = -4823
;String tmp_str0 = rrac?Bho
