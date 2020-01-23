(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x305 (str.at tmp_str2 tmp_int0)))
 (let ((?x93 (str.replace ?x1186 ?x305 ?x1186)))
 (= ?x93 (str.++ tmp_str14 tmp_str14))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str14 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str14 = 


