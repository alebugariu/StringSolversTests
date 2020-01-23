(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1937 (str.at tmp_str2 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x2353 (str.replace ?x229 ?x1937 ?x1937)))
 (= ?x2353 (str.replace tmp_str2 tmp_str2 tmp_str16))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str16 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str16 = 


