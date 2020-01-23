(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x71 (str.++ tmp_str18 tmp_str18)))
 (let ((?x1937 (str.at tmp_str2 tmp_int0)))
 (let ((?x1071 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1599 (str.replace ?x229 ?x1071 ?x1937)))
 (= ?x1599 ?x71)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str18 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str18 = 


;actual status: sat
;((tmp_int0 (- 1))
; (tmp_str2 "aaaaaaaaaak")
; (tmp_str18 ""))

;model:
;Int tmp_int0 = -1
;String tmp_str18 = 
;String tmp_str2 = aaaaaaaaaak
