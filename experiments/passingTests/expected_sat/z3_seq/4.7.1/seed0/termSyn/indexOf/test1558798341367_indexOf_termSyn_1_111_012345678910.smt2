(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2299 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x1959 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x2052 ?x1959 ?x229) ?x2299))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: sat

;model:
;Int tmp_int5 = -2
;String tmp_str0 = <\x00\x00\x00
