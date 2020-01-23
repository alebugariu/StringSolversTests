(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x1366 (str.indexof tmp_str0 tmp_str0 tmp_int4)))
 (let ((?x975 (str.substr tmp_str0 tmp_int4 tmp_int4)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x629 (str.indexof ?x118 ?x975 ?x1366)))
 (= ?x629 ?x1081)))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


;actual status: sat

;model:
;Int tmp_int4 = -2
;String tmp_str0 = 
