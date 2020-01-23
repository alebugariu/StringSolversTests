(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x1311 (str.len tmp_str2)))
 (let ((?x1886 (str.at ?x309 ?x1311)))
 (= ?x1886 ?x309)))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = 2
;String tmp_str2 = 
