(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1186 (str.++ tmp_str12 tmp_str12)))
 (let ((?x1466 (str.at tmp_str0 tmp_int1)))
 (let ((?x1150 (str.++ ?x1466 ?x1466)))
 (= ?x1150 ?x1186)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str12 = 


