(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x50 (int.to.str tmp_int8)))
 (let ((?x2515 (str.indexof tmp_str0 tmp_str0 tmp_int8)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x412 (str.substr ?x130 ?x1327 ?x2515)))
 (= ?x412 ?x50)))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


;actual status: sat
;((tmp_str0 "")
; (tmp_int8 (- 2)))

;model:
;String tmp_str0 = 
;Int tmp_int8 = -2
