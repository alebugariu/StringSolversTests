(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str5 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str6 () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(assert (! 
 (and (= (str.replace s tmp_str5 tmp_str6) s_fresh) (= (str.contains s tmp_str5) false)) :named a1))
(assert (! 
 (let (($x965 (= result s_fresh)))
 (let (($x966 (= $x965 true)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x135 (str.++ ?x134 s3)))
 (let (($x136 (= ?x135 result)))
 (let (($x130 (= s2 t)))
 (let (($x131 (= $x130 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x132 (and $x129 $x131)))
 (let ((?x124 (str.++ s1 s2)))
 (let ((?x126 (str.++ ?x124 s3)))
 (let (($x962 (= ?x126 s_fresh)))
 (let (($x963 (and $x962 $x132)))
 (let (($x964 (and $x963 $x136)))
 (let (($x121 (>= index 0)))
 (let (($x967 (ite $x121 $x964 $x966)))
 (let ((?x960 (str.indexof s_fresh t 0)))
 (let (($x961 (= ?x960 index)))
 (and $x961 $x967)))))))))))))))))))) :named a2))
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
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE
;s_fresh = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
