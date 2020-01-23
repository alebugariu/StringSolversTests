(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2526 (str.++ tmp_str2 tmp_str2)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let (($x1001 (str.contains ?x1035 ?x2526)))
 (= $x1001 (str.contains tmp_str12 tmp_str2))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = A
;String tmp_str12 = 
