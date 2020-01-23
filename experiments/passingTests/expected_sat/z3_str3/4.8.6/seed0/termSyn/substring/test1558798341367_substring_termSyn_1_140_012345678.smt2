(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2119 (int.to.str tmp_int6)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x376 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2476 (str.substr ?x130 ?x376 ?x1327)))
 (= ?x2476 ?x2119)))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1


;actual status: sat
;((tmp_str0 "aaaaaFv")
; (tmp_int6 (- 8366)))

;model:
;Int tmp_int6 = -8366
;String tmp_str0 = aaaaaFv
