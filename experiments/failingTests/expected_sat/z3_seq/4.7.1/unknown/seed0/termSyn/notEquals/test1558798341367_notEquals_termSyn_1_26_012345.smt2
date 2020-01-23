(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x1576 (str.contains tmp_str12 tmp_str2)))
 (let ((?x2526 (str.++ tmp_str2 tmp_str2)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let (($x44 (= ?x1035 ?x2526)))
 (= $x44 $x1576))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: unknown
