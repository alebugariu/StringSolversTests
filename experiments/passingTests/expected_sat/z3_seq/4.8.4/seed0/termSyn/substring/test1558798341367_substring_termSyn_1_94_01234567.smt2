(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2211 (str.++ tmp_str16 tmp_str16)))
 (let ((?x2299 (str.len tmp_str2)))
 (let ((?x2760 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x2837 (str.substr ?x229 ?x2760 ?x2299)))
 (= ?x2837 ?x2211)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str16 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int0 = 10
;String tmp_str2 = 
;String tmp_str16 = 
