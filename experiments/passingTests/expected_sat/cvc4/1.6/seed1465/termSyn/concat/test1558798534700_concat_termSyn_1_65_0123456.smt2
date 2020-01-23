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
 (let ((?x1146 (int.to.str tmp_int1)))
 (let ((?x2823 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x586 (str.++ ?x2823 ?x1146)))
 (= ?x586 ?x1186))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = 
;String tmp_str12 = 
