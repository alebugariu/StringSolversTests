(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x972 (str.len tmp_str0)))
 (let ((?x1959 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x2052 ?x1959 ?x972) ?x972)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: unsat
