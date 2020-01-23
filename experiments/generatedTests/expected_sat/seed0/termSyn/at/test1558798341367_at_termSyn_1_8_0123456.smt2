(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x322 (str.len tmp_str0)))
 (let ((?x69 (str.at tmp_str0 tmp_int1)))
 (let ((?x183 (str.at ?x69 ?x322)))
 (= ?x183 (str.replace tmp_str0 tmp_str0 tmp_str10))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str10 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str10 = 


