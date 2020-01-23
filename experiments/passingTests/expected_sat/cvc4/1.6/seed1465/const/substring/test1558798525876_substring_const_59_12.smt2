(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1439 (str.substr "0" tmp_int1 tmp_int2)))
 (= ?x1439 "0")))
(check-sat)

(get-value (tmp_int1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_int1 = 0
;tmp_int2 = 2


;actual status: sat

;model:
;Int tmp_int1 = 0
;Int tmp_int2 = 2
