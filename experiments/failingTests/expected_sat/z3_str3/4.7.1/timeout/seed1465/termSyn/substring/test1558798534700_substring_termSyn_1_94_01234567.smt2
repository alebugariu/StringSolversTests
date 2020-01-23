(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x637 (str.++ tmp_str16 tmp_str16)))
 (let ((?x2727 (str.len tmp_str2)))
 (let ((?x1237 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x742 (str.substr ?x1186 ?x1237 ?x2727)))
 (= ?x742 ?x637)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str16 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str16 = 


;actual status: timeout
