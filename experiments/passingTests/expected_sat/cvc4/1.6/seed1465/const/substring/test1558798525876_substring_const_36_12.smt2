(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1368 (str.substr "\n" tmp_int1 tmp_int2)))
 (= ?x1368 "")))
(check-sat)

(get-value (tmp_int1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_int1 = -1
;tmp_int2 = -1


;actual status: sat

;model:
;Int tmp_int1 = -1
;Int tmp_int2 = 0
