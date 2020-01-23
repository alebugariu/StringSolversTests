(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1161 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x2125 (str.at ?x309 ?x1161)))
 (= ?x2125 (str.replace tmp_str2 tmp_str2 tmp_str12))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: not_implemented
