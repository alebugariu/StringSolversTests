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
 (let ((?x1071 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x1542 (str.++ tmp_str2 tmp_str2)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1556 (str.replace ?x229 ?x1542 ?x1071)))
 (= ?x1556 ?x71)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str18 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str18 = 


;actual status: sat

;model:
;Int tmp_int0 = 77
;String tmp_str18 = 7
;String tmp_str2 = f
