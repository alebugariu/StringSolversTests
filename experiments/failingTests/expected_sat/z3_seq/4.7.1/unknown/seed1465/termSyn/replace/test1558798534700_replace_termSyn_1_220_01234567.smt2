(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str4 () String)
(assert
 (let ((?x637 (str.++ tmp_str16 tmp_str16)))
 (let ((?x1111 (str.substr tmp_str4 tmp_int0 tmp_int0)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x469 (str.replace ?x1186 ?x1186 ?x1111)))
 (= ?x469 ?x637))))))
(check-sat)

(get-value (tmp_int0 tmp_str4 tmp_str16 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;tmp_str16 = 


;actual status: unknown
