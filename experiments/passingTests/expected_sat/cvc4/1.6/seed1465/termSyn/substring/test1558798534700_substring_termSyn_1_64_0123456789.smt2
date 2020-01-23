(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int7 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x195 (str.substr tmp_str0 tmp_int7 tmp_int7)))
 (let ((?x2787 (str.indexof tmp_str0 tmp_str0 tmp_int7)))
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x165 (str.substr ?x2008 ?x545 ?x2787)))
 (= ?x165 ?x195)))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int7 = 1
