(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str5 () String)
(declare-fun s2 () String)
(declare-fun s2_fresh () String)
(declare-fun tmp_str6 () String)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun index () Int)
(assert (! 
 (let ((?x1081 (str.replace s2 tmp_str5 tmp_str6)))
 (let (($x1082 (= ?x1081 s2_fresh)))
 (and $x1082 (= (str.indexof s2 tmp_str5 0) (- 1))))) :named a1))
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x135 (str.++ ?x134 s3)))
 (let (($x136 (= ?x135 result)))
 (let (($x1068 (= s2_fresh t)))
 (let (($x1069 (= $x1068 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x1070 (and $x129 $x1069)))
 (let ((?x1065 (str.++ s1 s2_fresh)))
 (let ((?x1066 (str.++ ?x1065 s3)))
 (let (($x1067 (= ?x1066 s)))
 (let (($x1071 (and $x1067 $x1070)))
 (let (($x1072 (and $x1071 $x136)))
 (let (($x121 (>= index 0)))
 (let (($x1073 (ite $x121 $x1072 $x139)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 $x1073)))))))))))))))))))) :named a2))
(assert (! 
 (let ((?x115 (str.replace s t u)))
 (let (($x116 (= ?x115 result)))
 (not $x116))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;s2 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
