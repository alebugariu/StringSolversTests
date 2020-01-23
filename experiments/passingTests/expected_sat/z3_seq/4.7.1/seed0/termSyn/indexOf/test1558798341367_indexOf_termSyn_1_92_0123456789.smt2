(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int9 () Int)
(assert
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x2040 (str.indexof tmp_str0 tmp_str0 tmp_int9)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x881 (str.indexof ?x2052 ?x1634 ?x2040)))
 (= ?x881 ?x229)))))))
(check-sat)

(get-value (tmp_str0 tmp_int9 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1


;actual status: sat

;model:
;String tmp_str0 = \x1C\x00
;Int tmp_int9 = -2
