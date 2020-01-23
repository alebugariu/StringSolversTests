(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x725 (str.++ tmp_str0 tmp_str24)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x972 (str.at tmp_str0 tmp_int1)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2848 (str.replace ?x2040 ?x972 ?x130)))
 (= ?x2848 ?x725)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str24 = 


