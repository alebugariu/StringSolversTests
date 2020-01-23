(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int10 () Int)
(assert
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x50 (str.indexof tmp_str0 tmp_str0 tmp_int10)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x635 (str.indexof ?x2052 ?x2052 ?x50)))
 (= ?x635 ?x229))))))
(check-sat)

(get-value (tmp_str0 tmp_int10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int10 = -1


;actual status: sat

;model:
;Int tmp_int10 = 0
;String tmp_str0 = 0
