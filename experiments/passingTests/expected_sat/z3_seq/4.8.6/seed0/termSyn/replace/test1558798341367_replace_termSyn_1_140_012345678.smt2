(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1845 (int.to.str tmp_int3)))
 (= (str.replace ?x118 ?x1845 (str.substr tmp_str0 tmp_int3 tmp_int3)) ?x118))))
(check-sat)

(get-value (tmp_str0 tmp_int3 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1


;actual status: sat
;((tmp_str0 "")
; (tmp_int3 (- 1)))

;model:
;Int tmp_int3 = -1
;String tmp_str0 = 
