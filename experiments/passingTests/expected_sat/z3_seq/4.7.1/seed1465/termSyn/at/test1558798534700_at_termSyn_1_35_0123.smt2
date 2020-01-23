(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x93 (str.len tmp_str2)))
 (let ((?x348 (str.at ?x1823 ?x93)))
 (= ?x348 ?x1823)))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = 8
;String tmp_str2 = 
