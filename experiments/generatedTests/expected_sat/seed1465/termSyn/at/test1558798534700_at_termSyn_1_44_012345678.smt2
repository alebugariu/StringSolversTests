(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x595 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1220 (str.at ?x302 ?x595)))
 (= ?x1220 (str.++ tmp_str16 tmp_str16))))))
(check-sat)

(get-value (tmp_str0 tmp_int6 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str16 = 


