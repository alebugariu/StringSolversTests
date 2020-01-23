(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str5 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1035 (int.to.str tmp_int0)))
 (let ((?x1105 (str.len ?x1035)))
 (= ?x1105 (str.len tmp_str5)))))
(check-sat)

(get-value (tmp_int0 tmp_str5 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = 


;actual status: sat

;model:
;Int tmp_int0 = 2
;String tmp_str5 = \x00
