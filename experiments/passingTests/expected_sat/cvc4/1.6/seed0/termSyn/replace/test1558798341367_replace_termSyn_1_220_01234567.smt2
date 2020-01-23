(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str4 () String)
(assert
 (let ((?x2211 (str.++ tmp_str16 tmp_str16)))
 (let ((?x293 (str.substr tmp_str4 tmp_int0 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x2622 (str.replace ?x229 ?x229 ?x293)))
 (= ?x2622 ?x2211))))))
(check-sat)

(get-value (tmp_int0 tmp_str4 tmp_str16 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int0 = 0
;String tmp_str4 = 
;String tmp_str16 = 
