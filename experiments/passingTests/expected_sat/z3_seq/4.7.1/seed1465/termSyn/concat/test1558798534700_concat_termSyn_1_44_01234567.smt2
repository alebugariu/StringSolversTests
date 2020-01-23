(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x143 (str.replace tmp_str2 tmp_str2 tmp_str12)))
 (let ((?x2336 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x2131 (str.++ ?x1823 ?x2336)))
 (= ?x2131 ?x143))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int0 = 38
;String tmp_str2 = 
;String tmp_str12 = 38
