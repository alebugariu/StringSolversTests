(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let (($x725 (str.contains tmp_str0 tmp_str0)))
 (= (str.contains (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int3)) $x725)))
(check-sat)

(get-value (tmp_str0 tmp_int3 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1


;actual status: sat

;model:
;Int tmp_int3 = -1
;String tmp_str0 = y
