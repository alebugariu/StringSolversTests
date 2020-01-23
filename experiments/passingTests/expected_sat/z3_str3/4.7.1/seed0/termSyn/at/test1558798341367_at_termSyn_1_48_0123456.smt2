(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x322 (str.len tmp_str0)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.at ?x2060 ?x322) (str.at tmp_str0 tmp_int14)))))
(check-sat)

(get-value (tmp_str0 tmp_int14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int14 = -1


;actual status: sat

;model:
;String tmp_str0 = aaE
;Int tmp_int14 = -1
