(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2623 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x92 (int.to.str tmp_int1)))
 (let ((?x1741 (str.++ ?x2623 ?x92)))
 (= ?x1741 ?x2623)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat
;((tmp_str0 "")
; (tmp_int1 (- 1)))

;model:
;Int tmp_int1 = -1
;String tmp_str0 = 
