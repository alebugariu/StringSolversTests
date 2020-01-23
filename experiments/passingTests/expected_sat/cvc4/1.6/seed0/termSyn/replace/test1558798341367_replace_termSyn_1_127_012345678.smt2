(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2119 (int.to.str tmp_int6)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2608 (str.replace ?x118 ?x118 ?x2119)))
 (= ?x2608 (str.substr tmp_str0 tmp_int6 tmp_int6))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1


;actual status: sat

;model:
;Int tmp_int6 = -1
;String tmp_str0 = 
