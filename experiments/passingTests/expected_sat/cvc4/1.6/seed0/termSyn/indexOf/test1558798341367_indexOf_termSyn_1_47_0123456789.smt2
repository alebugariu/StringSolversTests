(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int9 () Int)
(assert
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x1794 (str.indexof tmp_str0 tmp_str0 tmp_int9)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x202 (str.indexof ?x118 ?x130 ?x1794)))
 (= ?x202 ?x1081)))))))
(check-sat)

(get-value (tmp_str0 tmp_int9 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int9 = 1
