(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x2298 (int.to.str tmp_int3)))
 (let ((?x512 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2642 (str.++ ?x512 ?x2298)))
 (= ?x2642 (str.replace tmp_str0 tmp_str12 tmp_str0))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str12 = 


