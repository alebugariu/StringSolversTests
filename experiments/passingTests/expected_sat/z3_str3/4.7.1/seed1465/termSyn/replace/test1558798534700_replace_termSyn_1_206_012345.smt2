(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str4 () String)
(assert
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x2464 (str.at tmp_str4 tmp_int0)))
 (let ((?x1891 (str.replace ?x1186 ?x1186 ?x2464)))
 (= ?x1891 ?x1186)))))
(check-sat)

(get-value (tmp_int0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a


;actual status: sat

;model:
;Int tmp_int0 = 6
;String tmp_str4 = aaaaaw6aaav
