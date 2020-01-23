(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int20 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x2580 (str.at tmp_str0 tmp_int20)))
 (let ((?x628 (str.at tmp_str0 tmp_int4)))
 (let ((?x1313 (int.to.str tmp_int4)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.replace ?x130 ?x1313 ?x628) ?x2580))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_int20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_int20 = 0


;actual status: sat
;((tmp_str0 "\x00")
; (tmp_int4 (- 1))
; (tmp_int20 0))

;model:
;Int tmp_int20 = 0
;Int tmp_int4 = -1
;String tmp_str0 = \x00
