(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2082 (str.++ tmp_str12 tmp_str12)))
 (let ((?x1747 (str.to.int tmp_str2)))
 (let ((?x2727 (str.len tmp_str2)))
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x37 (str.substr ?x1186 ?x2727 ?x1747)))
 (= ?x37 ?x2082)))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str12 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
;String tmp_str12 = 
