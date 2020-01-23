(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x92 (int.to.str tmp_int1)))
 (let ((?x322 (str.len tmp_str0)))
 (let ((?x69 (str.at tmp_str0 tmp_int1)))
 (let ((?x183 (str.at ?x69 ?x322)))
 (= ?x183 ?x92))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat
;((tmp_str0 "")
; (tmp_int1 (- 1)))

;model:
;Int tmp_int1 = -1
;String tmp_str0 = 
