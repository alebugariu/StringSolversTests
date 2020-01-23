(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x87 (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int5) ?x229)))
 (= ?x87 ?x229))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: sat

;model:
;Int tmp_int5 = 0
;String tmp_str0 = 
