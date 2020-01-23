(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str9 () String)
(assert
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x2196 (str.++ ?x1823 ?x1823)))
 (= ?x2196 (str.substr tmp_str9 tmp_int0 tmp_int0)))))
(check-sat)

(get-value (tmp_int0 tmp_str9 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str9 = ar
