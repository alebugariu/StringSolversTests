(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (= (str.replace ?x2008 ?x2008 (int.to.str tmp_int6)) (str.at tmp_str0 tmp_int6))))
(check-sat)

(get-value (tmp_str0 tmp_int6 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1


;actual status: sat

;model:
;Int tmp_int6 = 4
;String tmp_str0 = \x00\x00\x00\x004\x00\x00
