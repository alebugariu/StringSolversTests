(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1413 (str.replace tmp_str2 tmp_str2 tmp_str16)))
 (let ((?x1747 (str.to.int tmp_str2)))
 (let ((?x1237 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x2237 (str.substr ?x1186 ?x1237 ?x1747)))
 (= ?x2237 ?x1413)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str16 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str16 = 


;actual status: unknown
