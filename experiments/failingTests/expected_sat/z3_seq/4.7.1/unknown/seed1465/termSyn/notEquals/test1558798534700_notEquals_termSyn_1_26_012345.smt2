(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x1494 (str.contains tmp_str12 tmp_str2)))
 (let ((?x2564 (str.++ tmp_str2 tmp_str2)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let (($x15 (= ?x348 ?x2564)))
 (= $x15 $x1494))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: unknown
