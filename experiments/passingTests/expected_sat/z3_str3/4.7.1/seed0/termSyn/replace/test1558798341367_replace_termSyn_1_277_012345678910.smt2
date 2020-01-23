(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int24 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x309 (str.at tmp_str0 tmp_int24)))
 (let ((?x2463 (str.at tmp_str0 tmp_int5)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.replace ?x130 ?x2463 (str.substr tmp_str0 tmp_int5 tmp_int5)) ?x309)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_int24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int24 = 0


;actual status: sat

;model:
;Int tmp_int5 = 0
;String tmp_str0 = t
;Int tmp_int24 = -1
