(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x2255 (str.contains tmp_str2 tmp_str2)))
 (let ((?x2564 (str.++ tmp_str2 tmp_str2)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let (($x582 (str.prefixof ?x348 ?x2564)))
 (= $x582 $x2255))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
