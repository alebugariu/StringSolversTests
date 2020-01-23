(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x1827 (= tmp_str2 tmp_str2)))
 (let ((?x644 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let (($x1264 (str.prefixof ?x348 ?x644)))
 (= $x1264 $x1827))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = 2
;String tmp_str2 = 2
