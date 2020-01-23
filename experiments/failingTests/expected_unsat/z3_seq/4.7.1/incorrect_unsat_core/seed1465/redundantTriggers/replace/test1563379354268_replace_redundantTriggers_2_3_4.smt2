(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str5 () String)
(declare-fun s1 () String)
(declare-fun s1_fresh () String)
(declare-fun tmp_str6 () String)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(assert (! 
 (and (= (str.replace s1 tmp_str5 tmp_str6) s1_fresh) (= (str.contains s1 tmp_str5) false)) :named a1))
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
 (let ((?x1034 (str.++ s1_fresh u)))
 (let ((?x1035 (str.++ ?x1034 s3)))
 (let (($x1036 (= ?x1035 result)))
 (let (($x130 (= s2 t)))
 (let (($x131 (= $x130 true)))
 (let ((?x1030 (str.len s1_fresh)))
 (let (($x1031 (= ?x1030 index)))
 (let (($x1032 (and $x1031 $x131)))
 (let ((?x1027 (str.++ s1_fresh s2)))
 (let ((?x1028 (str.++ ?x1027 s3)))
 (let (($x1029 (= ?x1028 s)))
 (let (($x1033 (and $x1029 $x1032)))
 (let (($x1037 (and $x1033 $x1036)))
 (let (($x121 (>= index 0)))
 (let (($x1038 (ite $x121 $x1037 $x139)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 $x1038)))))))))))))))))))) :named a2))
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
;s1 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE
;index = NO VALUE
;s1_fresh = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 

;actual status: incorrect_unsat_core
;(a1 a2 a0)
