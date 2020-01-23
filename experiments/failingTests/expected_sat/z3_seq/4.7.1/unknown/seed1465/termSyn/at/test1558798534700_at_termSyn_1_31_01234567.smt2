(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x953 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x2459 (str.at ?x1823 ?x953)))
 (= ?x2459 (str.replace tmp_str2 tmp_str2 tmp_str12))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: unknown
