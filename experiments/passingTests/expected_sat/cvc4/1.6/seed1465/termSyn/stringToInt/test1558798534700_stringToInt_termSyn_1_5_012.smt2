(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str5 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x35 (str.to.int tmp_str5)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let ((?x2265 (str.to.int ?x348)))
 (= ?x2265 ?x35)))))
(check-sat)

(get-value (tmp_int0 tmp_str5 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = a


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str5 = 
