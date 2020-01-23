(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x2113 (str.contains tmp_str9 tmp_str9)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let (($x333 (= ?x1035 ?x1035)))
 (= $x333 $x2113)))))
(check-sat)

(get-value (tmp_int0 tmp_str9 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a


;actual status: sat

;model:
;Int tmp_int0 = 0
;String tmp_str9 = 
