(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int20 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x972 (str.len tmp_str0)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x2052 ?x2052 ?x972) (str.indexof tmp_str0 tmp_str0 tmp_int20)))))
(check-sat)

(get-value (tmp_str0 tmp_int20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int20 = -1


;actual status: sat

;model:
;Int tmp_int20 = 0
;String tmp_str0 = 
