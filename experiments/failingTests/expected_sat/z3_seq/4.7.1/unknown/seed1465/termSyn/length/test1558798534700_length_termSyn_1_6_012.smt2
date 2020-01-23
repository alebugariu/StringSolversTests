(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str5 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x348 (int.to.str tmp_int0)))
 (let ((?x1426 (str.len ?x348)))
 (= ?x1426 (str.to.int tmp_str5)))))
(check-sat)

(get-value (tmp_int0 tmp_str5 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = 0


;actual status: unknown
