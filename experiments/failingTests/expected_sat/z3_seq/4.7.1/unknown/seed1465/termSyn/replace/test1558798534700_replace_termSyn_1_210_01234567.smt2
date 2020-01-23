(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1229 (str.++ tmp_str4 tmp_str4)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x2075 (str.replace ?x1186 ?x1186 ?x1229)))
 (= ?x2075 (str.replace tmp_str4 tmp_str16 tmp_str4))))))
(check-sat)

(get-value (tmp_int0 tmp_str4 tmp_str16 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;tmp_str16 = 


;actual status: unknown
