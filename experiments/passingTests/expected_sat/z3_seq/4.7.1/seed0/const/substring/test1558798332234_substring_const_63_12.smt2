(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1115 (str.substr "2" tmp_int1 tmp_int2)))
 (= ?x1115 "")))
(check-sat)

(get-value (tmp_int1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_int1 = -1
;tmp_int2 = -1


;actual status: sat

;model:
;Int tmp_int1 = 41
;Int tmp_int2 = -1
