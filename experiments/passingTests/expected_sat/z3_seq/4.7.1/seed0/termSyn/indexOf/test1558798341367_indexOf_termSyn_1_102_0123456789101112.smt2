(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int10 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x50 (str.indexof tmp_str0 tmp_str0 tmp_int10)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x2052 ?x2052 ?x50) ?x50))))
(check-sat)

(get-value (tmp_str0 tmp_int10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int10 = -1


;actual status: sat

;model:
;Int tmp_int10 = -2
;String tmp_str0 = \x00
